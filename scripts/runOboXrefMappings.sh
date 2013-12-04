#!/bin/bash
#===============================================================================
#
#          FILE:  runOboXrefMappings.sh
# 
#         USAGE:  ./runOboXrefMappings.sh 
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

projectName="obo_xref"
projectFileName="${projectName}_filename.txt"

# ---------------------------------------------------------------------------
# The project GIT checkout directory
projectRootPath=".."

# ---------------------------------------------------------------------------
# The output path
pathArg=""
projectDataPath="/srv/ncbo/share/mappings"
if [ -d $projectDataPath ]; then
    pathArg="-p $projectDataPath"
fi

# ---------------------------------------------------------------------------
# Create a temporary configuration for processing files
#
projectDirPattern="${projectName}_results.XXXX"
projectTMPDIR=$(mktemp -d -t $pathArg $projectDirPattern)
pathArg=""
if [ -d $projectTMPDIR ]; then
    pathArg="-p $projectTMPDIR"
fi
tmpFILE=$(mktemp -t $pathArg ${projectName}_XXXXXXXX)
projectFILE4TXT=${tmpFILE}.txt
projectFILE4TTL=$(echo $projectFILE4TXT | sed -e "s/\.txt/_mappings_001\.ttl/")
projectFILE4LOG=$(echo $projectFILE4TXT | sed -e "s/\.txt/\.log/")
#projectFILE4LOG="${projectTMPDIR}/obo_xref_mappings.log"
#echo "$projectFILE4TXT" > $projectFileName

# ---------------------------------------------------------------------------
# Try to set the java classpath.  Run a script to convert an eclipse .classpath
# file into a CLASSPATH environment variable setting.  This is stored into
# 'classPath.sh', which can be sourced before running java commands below.
./javaClasspathFromEclipseProject.sh
[ -s classPath.sh ] && source classPath.sh

# ---------------------------------------------------------------------------
# Try to create mappings.
echo "$(date): $0, INFO: Starting $projectName mapping" >&2
javaClass=org.ncbo.stanford.mappings.OboXrefMappings
java -cp $projectRootPath/target/*:$CLASSPATH \
    $javaClass $pathArg > $projectFileName 2> $projectFILE4LOG
    #$javaClass > $projectFILE4TTL 2> $projectFILE4LOG
if [ $? -ne 0 ]; then
    echo "$(date): $0, ERROR: $projectName failed." >&2
    exit 1
fi
echo "$(date): $0, INFO: Completed $projectName" >&2
echo "$(date): $0, INFO: Results saved to: $projectTMPDIR" >&2


