#!/bin/bash
#===============================================================================
#
#          FILE:  runJavaProcess.sh
# 
#         USAGE:  ./runJavaProcess.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Darren L. Weber, Ph.D., darren.weber@stanford.edu
#       COMPANY:  Stanford Center for BioMedical Informatics Research (BMIR)
#       VERSION:  1.0
#      REVISION:  ---
#===============================================================================

TRUE=1
FALSE=0

DEBUG=$TRUE

# ---------------------------------------------------------------------------
# The project GIT checkout directory
projectRootPath=".."

# ---------------------------------------------------------------------------
# The output path
projectDataPath="/srv/ncbo/share/mappings"
if [ ! -d $projectDataPath ]; then
    # Fallback to /tmp
    projectDataPath="/tmp"
fi

# ---------------------------------------------------------------------------
# Parse the input arguments

projects[0]="loom"
projects[1]="obo_xref"
projects[2]="umls_cui"
projects[3]="umls_mrmap"
projects[4]="uri_match"
project=""

testing=$FALSE   # false
runQuery=$TRUE  # true
runSort=$TRUE  # true

help() {
    echo "$0 [options]" >&2
    echo "-h =>  help" >&2
    echo "-p {project} => run tasks for projects" >&2
    echo "             => projects: ${projects[@]}" >&2
    echo "-s =>  skip query for terms, use this when terms are already dumped" >&2
    echo "-t {testingTermsFile} => skip query, test mappings for {testingTermsFile}" >&2
}

while getopts ":hp:st:" opt; do
    case $opt in
        h)
            help
            exit
            ;;
        p)
            project="$OPTARG"
            ;;
        s)
            # Skip the terms query process
            runQuery=$FALSE # false
            ;;
        t)
            testing=$TRUE
            testTermFile="$OPTARG"
            runQuery=$FALSE # Use custom terms for testing
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done

# ---------------------------------------------------------------------------
# The dump file prefix and suffix are defined by defaults in the source
# code of the java query classes.
filePrefix='${project}_terms_'
fileSuffix='.txt'

# ---------------------------------------------------------------------------
# The class name is the same as the project name, with an upper case first
# letter.

case "$project" in
    "loom")
        className="Loom"
        ;;
    "obo_xref")
        className="OboXref"
        runQuery=$FALSE  # query and mapping is all done in Mapping class.
        runSort=$FALSE  # query and mapping is all done in Mapping class.
        testing=$FALSE  # there is no testing data for obo_xref yet.
        ;;
    "umls_cui")
        className="UmlsCui"
        ;;
    "umls_mrmap")
        className="UmlsMrmap"
        runQuery=$FALSE  # query and mapping is all done in Mapping class.
        runSort=$FALSE  # query and mapping is all done in Mapping class.
        testing=$FALSE  # there is no testing data for umls_mrmap yet.
        ;;
    "uri_match")
        className="UriMatch"
        ;;
    *)
        echo >&2
        echo "ERROR: Cannot work with $project, sorry." >&2
        echo >&2
        help
        exit 1
        ;;
esac

# ---------------------------------------------------------------------------
# Set java classes and classpath
#
classPackage="org.ncbo.stanford.mappings"
classQuery="${classPackage}.${className}Query"
classMappings="${classPackage}.${className}Mappings"
# Try to set the java classpath.  Run a script to convert an eclipse .classpath
# file into a CLASSPATH environment variable setting.  This is stored into
# 'classPath.sh', which can be sourced before running java commands below.
./javaClasspathFromEclipseProject.sh
[ -s classPath.sh ] && source classPath.sh
# Enable plenty of system resources for the java processing.
export JAVA_OPTS="-Xdebug -Xms512m -Xmx3g"

# ---------------------------------------------------------------------------
# Create a temporary configuration for processing files
#
if [ $testing -gt 0 ]; then
    projectDirPattern="${project}_testing_$(date +'%Y%m%d').XXXX"
else
    projectDirPattern="${project}_results_$(date +'%Y%m%d').XXXX"
fi
projectTMPDIR=$(mktemp -d -p $projectDataPath -t $projectDirPattern)

# Don't put a ${project}_filename.txt into projectTMPDIR; other scripts in
# the project depend on getting the output location from this file.
projectFileName="${project}_filename.txt"
# Place the test query dump file into the projectTMPDIR.
if [ $testing -gt 0 ]; then
    cp -p $testTermFile $projectTMPDIR/
    testTermFile="$projectTMPDIR/$(basename $testTermFile)"
    echo $testTermFile > $projectFileName
fi

# ---------------------------------------------------------------------------
# Debug messages
#
if [ $DEBUG == $TRUE ]; then
    echo "$(date): $0, DEBUG ..."
    echo "... project = $project"
    echo "... projectTMPDIR = $projectTMPDIR"
    echo "... classQuery = $classQuery"
    echo "... classMappings = $classMappings"
fi


# ---------------------------------------------------------------------------
# Try to dump ontology terms.
if [ $runQuery == $TRUE ]; then
    # Run the SPARQL queries to dump ontology terms.  The stdout of this
    # process is a unique filename for the dump file, which will be a temp file,
    # something like: /tmp/${project}_terms_${randomDigits}.txt
    echo "$(date): $0, INFO: Starting query dump" >&2
    if [ -d $projectTMPDIR ]; then
        queryPathArg="-p $projectTMPDIR"
    else
        queryPathArg=""
    fi
    rm -f $projectFileName
    java $JAVA_OPTS -cp $projectRootPath/target/*:$CLASSPATH \
        $classQuery $queryPathArg > $projectFileName
    if [ $? -ne 0 ]; then
        echo "$(date): $0, ERROR: $classQuery failed." >&2
        exit 1
    fi
    if [ ! -s $projectFileName ]; then
        echo "$(date): $0, ERROR: there is no query dump file." >&2
        exit 1
    fi
    file4qry=$(cat $projectFileName)
    echo "$(date): $0, INFO: query dump file: $file4qry" >&2
    if [ ! -s $file4qry ]; then
        echo "$(date): $0, ERROR: there are no terms in the dump file." >&2
        exit 1
    fi
    echo "$(date): $0, INFO: Completed query dump" >&2
else
    echo "$(date): $0, INFO: Skipping query dump." >&2
fi

# ---------------------------------------------------------------------------
# Try to sort the query dump.
if [ $runSort == $TRUE ]; then

    file4qry=$(cat $projectFileName)
    if [ ! -s $file4qry ]; then
        echo "$(date): $0, ERROR: there are no terms in the dump file." >&2
        exit 1
    fi
    tmpPath="$(dirname $file4qry)"
    filePattern=$(echo $file4qry | sed -e "s/${fileSuffix}//" -e "s/_terms//")
    file4srt="${filePattern}_sortedUnique${fileSuffix}"
    file4map="${filePattern}_mappings.ttl"
    if [ $DEBUG == $TRUE ]; then
        echo "$(date): $0, DEBUG ..."
        echo "... file4qry = $file4qry"
        echo "... file4srt = $file4srt"
        echo "... file4map = $file4map"
    fi
    # Use a TMPDIR for sort other than /tmp because BMIR systems 
    # have limited space on /tmp
    if [ -d $tmpPath ]; then
        sortPathArg="--temporary-directory=$tmpPath"
    else
        sortPathArg=""
    fi
    # Process the terms; return sorted, unique lines
    doSort=$FALSE
    if [ ! -r $file4srt ]; then
        # Sort file doesn't exist or it's not readable, create it.
        doSort=$TRUE
    else
        # Only sort when there is new query output.
        if [ -s $file4srt ] && [ $file4qry -ot $file4srt ]; then
            echo "$(date): $0, INFO: Already sorted the query dump file." >&2
        else
            doSort=$TRUE
        fi
    fi
    if [ $doSort -gt 0 ]; then
        tmpFile=$(mktemp -t -p $tmpPath tmp.XXXX)
        grep -v -E '^#' $file4qry > $tmpFile
        sort -u $sortPathArg $tmpFile > $file4srt
        rm -f $tmpFile
    fi
    if [ -s $file4srt ]; then
        echo "$(date): $0, INFO: Sorted terms are in: $file4srt" >&2
    else
        echo "$(date): $0, ERROR: failed to sort terms." >&2
        exit 1
    fi
else
    echo "$(date): $0, INFO: Skipping term sort." >&2
fi



# ---------------------------------------------------------------------------
# Try to create mappings.
#
echo "$(date): $0, INFO: Starting $project mapping" >&2

mappingOK=$FALSE
case "$project" in
    "loom" | "umls_cui" | "uri_match")
        #
        # TODO: Add 2> output to log file.
        #
        java $JAVA_OPTS -cp $projectRootPath/target/*:$CLASSPATH \
            $classMappings $file4srt $file4map
        if [ $? -eq 0 ]; then
            mappingOK=$TRUE
        fi
        ;;
    "obo_xref" | "umls_mrmap")
        # Create a temporary configuration for processing files
        file4qry=$projectTMPDIR/${project}_terms${fileSuffix}
        file4log=$(echo $file4qry | sed -e "s/_terms${fileSuffix}/\.log/")
        file4map=$(echo $file4qry | sed -e "s/_terms${fileSuffix}/_mappings\.ttl/")
        if [ $DEBUG == $TRUE ]; then
            echo "$(date): $0, DEBUG ..."
            echo "... file4log = $file4log"
            echo "... file4qry = $file4qry"
            echo "... file4map = $file4map"
            echo "... classMappings = $classMappings"
        fi
        mapPathArg=""
        if [ -d $projectTMPDIR ]; then
            mapPathArg="-p $projectTMPDIR"
        fi
        #
        # TODO: Modify oboXref and umls_mrmap java for consistent file handling.
        #
        if [ $project == "umls_mrmap" ]; then
            echo "$file4qry" > $projectFileName
            java $JAVA_OPTS -cp $projectRootPath/target/*:$CLASSPATH \
                $classMappings $mapPathArg > $file4map 2> $file4log
            javaStatus=$?
        fi
        if [ $project == "obo_xref" ]; then
            java $JAVA_OPTS -cp $projectRootPath/target/*:$CLASSPATH \
                $classMappings $mapPathArg > $projectFileName 2> $file4log
            javaStatus=$?
        fi
        if [ $javaStatus -eq 0 ]; then
            mappingOK=$TRUE
        fi
        ;;
esac

mv /tmp/bioportal_mapping.log $projectTMPDIR/

if [ $mappingOK == $TRUE ]; then
    echo "$(date): $0, INFO: Completed mapping process" >&2
    echo "$(date): $0, INFO: Matched terms are in: $file4map" >&2
    exit 0
else
    echo "$(date): $0, ERROR: Failed term mapping." >&2
    exit 1
fi

