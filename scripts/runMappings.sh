#!/bin/bash

# ONLY EDIT THIS SCRIPT FROM WITHIN THE git REPOSITORY!  WHEREVER THIS SCRIPT
# RUNS, IT WILL REPLACE ITSELF WITH A COPY FROM THE GIT CHECKOUT.  THE PURPOSE
# OF THIS LOGIC IS TO FOCUS MAINTENANCE OF THIS SCRIPT IN GIT.

projects[0]="loom"
projects[1]="obo_xref"
projects[2]="umls_cui"
projects[3]="umls_mrmap"
projects[4]="uri_match"
project=""

TODAY=$(date +"%Y%m%d")

# Keep track of the current working directory.
CWD=$(pwd)

scriptsPath=$(dirname $0)
if [ ! -f "${scriptsPath}/runJavaProcess.sh" ]; then
    # If at first we don't succeed...
    javaScript=$(find ./ -type f -name "runJavaProcess.sh" | head -n 1)
    scriptsPath=$(dirname $javaScript)
fi
if [ ! -f "${scriptsPath}/runJavaProcess.sh" ]; then
    # Fail this time.
    echo $scriptsPath
    echo "$(date): $0, ERROR: Cannot locate scripts path." >&2
    exit 1
fi

help () {
    echo "$0 [options]" >&2
    echo "-h => help" >&2
    echo "-p {project} => run {project}" >&2
    echo "             => projects: all ${projects[@]}" >&2
    echo "-s => include stats and RDF syntax checks for {project}" >&2
    echo "-t => test {project} (use test data, include stats, no triple store upload)" >&2
    echo "-u => upload results to stage triple store for {project}" >&2
}


runJAVA () {
    thisProject=$1
    cd $scriptsPath
    setTestArgs $thisProject
    ./runJavaProcess.sh -p $thisProject $testArgs
    javaStatus=$?
    cd $CWD
}

runLOOM () {
    thisProject="loom"
    runJAVA $thisProject
    if [ $javaStatus -ne 0 ]; then
        echo "$(date): $0, ERROR: $thisProject java process failed." >&2
        return 1
    fi
    # runStats options:
    fieldURL=3
    fieldONT=4
    runPostProcessing $thisProject
}

runOBOXREF () {
    thisProject="obo_xref"
    runJAVA $thisProject
    if [ $javaStatus -ne 0 ]; then
        echo "$(date): $0, ERROR: $thisProject java process failed." >&2
        return 1
    fi
    #cd $scriptsPath
    #./runOboXrefMappings.sh
    #javaStatus=$?
    #if [ $javaStatus -ne 0 ]; then
    #    echo "$(date): $0, ERROR: $thisProject java process failed." >&2
    #    return 1
    #fi
    runPostProcessing $thisProject
}

runUMLS_CUI () {
    thisProject="umls_cui"
    runJAVA $thisProject
    if [ $javaStatus -ne 0 ]; then
        echo "$(date): $0, ERROR: $thisProject java process failed." >&2
        return 1
    fi
    # runStats options:
    fieldURL=3
    fieldONT=4
    runPostProcessing $thisProject
}

runUMLS_MRMAP () {
    thisProject="umls_mrmap"
    cd $scriptsPath
    ./runUmlsMrmapMappings.sh
    javaStatus=$?
    if [ $javaStatus -ne 0 ]; then
        echo "$(date): $0, ERROR: $thisProject java process failed." >&2
        return 1
    fi
    cd $CWD
    runPostProcessing $thisProject
}

runURI_MATCH () {
    thisProject="uri_match"
    runJAVA $thisProject
    if [ $javaStatus -ne 0 ]; then
        echo "$(date): $0, ERROR: $thisProject java process failed." >&2
        return 1
    fi
    # runStats options:
    fieldURL=1
    fieldONT=2
    runPostProcessing $thisProject
}

runPostProcessing () {
    thisProject=$1
    getResultsFilename $thisProject
    checkSyntax $thisProject
    #update4store $thisProject
    stats $thisProject
    archive $thisProject
}


# ---------------------------------------------------------------------------
# Set test arguments for java process
setTestArgs () {
    thisProject=$1
    if [ $testing -gt 0 ]; then
        testArgs="-t ${thisProject}_test_terms.txt"
    else
        testArgs=""
    fi
}

# ---------------------------------------------------------------------------
# Get the results file name from the java process.
getResultsFilename () {
    thisProject=$1
    tmpExt="txt"
    file4qry=$(cat ${scriptsPath}/${thisProject}_filename.txt)
    if [ "$file4qry" == "" ]; then
        echo "Failed to get file4qry"
        exit 1
    fi
    tmpPath=$(dirname $file4qry)

    # TODO: Verify this pattern applies to all mapping types!  Used in stats.
    qryFilePattern=$(echo $file4qry | sed -e "s/\.txt//" -e "s/_terms//")
    mapFilePattern="${qryFilePattern}_mappings"
    #mapCleanPattern="${mapFilePattern}_???_OK.nt"

    # DEBUG
    echo "$0 ::getResultsFilename(), DEBUG..."
    echo "...tmpPath = $tmpPath"
    echo "...file4qry = $file4qry"
    echo "...qryFilePattern = $qryFilePattern"
    echo "...mapFilePattern = $mapFilePattern"
}

# ---------------------------------------------------------------------------
# Check the syntax of the .ttl file(s) with rapper
checkSyntax () {
    thisProject=$1
    if [ $runRapper -gt 0 ] && which rapper >/dev/null 2>&1; then
        echo "$(date): $0, INFO: Starting ${thisProject} syntax checking with rapper" >&2
        syntaxFile="${qryFilePattern}_syntaxChecks.log"
        for ttlFile in ${tmpPath}/*.ttl; do
            echo >> $syntaxFile
            rapper -i turtle -c --show-graphs --show-namespaces $ttlFile >> $syntaxFile
            echo >> $syntaxFile
        done
        echo "$(date): $0, INFO: Completed ${thisProject} syntax checking with rapper" >&2
    fi
}

# ---------------------------------------------------------------------------
# Update the 4store triple store
#update4store () {
#    thisProject=$1
#    if [ $uploadTripleStore -gt 0 ]; then
#        cd $scriptsPath
#        ./4storeUpdate.sh -p $thisProject -i $mapFilePattern
#        if [ $? -ne 0 ]; then
#            echo "$(date): $0, ERROR: ${thisProject} upload to 4store failed" >&2
#            #mapCleanPattern="ERROR$$"
#            cd $CWD
#            return 1
#        fi
#        cd $CWD
#    fi
#    return 0
#}

# ---------------------------------------------------------------------------
# Stats can take ~25 minutes to compute, not worth it for a normal run.
stats () {
    thisProject=$1
    if [ $runStats -gt 0 ]; then
        # Generate simple stats from the output
        echo "$(date): $0, INFO: Starting ${thisProject} stats process." >&2
        statsStatus=1 # failure, by default
        case "$thisProject" in
            "obo_xref" | "umls_mrmap" )
                statsFile="${qryFilePattern}_stats.txt"
                mapCount=$(grep -F 'One_To_One_Mapping' ${qryFilePattern}*.ttl | wc -l)
                echo > $statsFile
                echo "mappings: $mapCount" >> $statsFile
                echo >> $statsFile
                [ $mapCount -gt 0 ] && statsStatus=0 || statsStatus=1
                ;;
            *)
                cd $CWD
                ${scriptsPath}/runStats.sh -p ${thisProject} -t ${file4qry} -u $fieldURL -o $fieldONT
                statsStatus=$?
        esac
        if [ "$statsStatus" -eq 0 ]; then
            echo "$(date): $0, INFO: Completed ${thisProject} stats process." >&2
        else
            echo "$(date): $0, ERROR: ${thisProject} stats process failed." >&2
            return 1
        fi
    fi
    return 0
}

# ---------------------------------------------------------------------------
# Archive the results
archive () {
    thisProject=$1
    echo >&2
    echo "$(date): $0, INFO: Archiving ${thisProject} results." >&2
    if [ $testing -gt 0 ]; then
        resultPath="${CWD}/${thisProject}_testing_${TODAY}"
    else
        resultPath="${CWD}/${thisProject}_results_${TODAY}"
    fi
    mkdir -p $resultPath
    rsync -av ${tmpPath}/* $resultPath/
    # Cleanup the tmpFiles
    if [ $? -eq 0 ]; then
        echo "$(date): $0, INFO: Archived ${thisProject} results to:" >&2
        echo "$resultPath" >&2
        rm -rf $tmpPath
    else
        echo "$(date): $0, ERROR: ${thisProject} results archive failed." >&2
        return 1
    fi
    return 0
}






# ---------------------------------------------------------------------------
# Parse arguments
testing=0 # do not test
runStats=0 # do not run stats
runRapper=0 # do not run syntax checks
uploadTripleStore=0 # do not upload results to triple store

while getopts ":hp:stu" opt; do
    case $opt in
        h)
            help
            exit
            ;;
        p)
            project="$OPTARG"
            ;;
        s)
            runStats=1 # include stats
            runRapper=1 # include syntax checks
            ;;
        t)
            testing=1 # run tests
            runStats=1 # include stats
            runRapper=1 # include syntax checks
            ;;
        u)
            uploadTripleStore=1 # upload to triple store
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
# Run the ontology processing

case "$project" in
    "all")
        runLOOM
        runURI_MATCH
        runUMLS_CUI
        runUMLS_MRMAP
        runOBOXREF
        ;;
    "loom")
        runLOOM
        ;;
    "obo_xref")
        runOBOXREF
        ;;
    "umls_cui" )
        runUMLS_CUI
        ;;
    "umls_mrmap" )
        runUMLS_MRMAP
        ;;
    "uri_match")
        runURI_MATCH
        ;;
    *)
        echo >&2
        echo "ERROR: Cannot work with $project, sorry." >&2
        echo >&2
        help
        exit 1
        ;;
esac

