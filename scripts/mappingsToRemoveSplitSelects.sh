#!/bin/bash
#===============================================================================
#
#          FILE:  mappingsToRemoveSplitSelects.sh
# 
#         USAGE:  ./mappingsToRemoveSplitSelects.sh
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Darren L. Weber, Ph.D. (), darren.weber@stanford.edu
#       COMPANY:  Stanford University
#       VERSION:  1.0
#       CREATED:  06/01/2012 11:09:57 PM PDT
#      REVISION:  ---
#===============================================================================

mkdir -p tmp
cp mappingsToRemove_SelectSeparated.rq tmp/
cd tmp
csplit mappingsToRemove_SelectSeparated.rq /^SELECT/ {*}
for f in xx*; do
    if [ "$f" == "xx00" ]; then
        prefixFile=$f
    else
        cat $prefixFile $f > tmp.txt
        mv tmp.txt $f
    fi
done

