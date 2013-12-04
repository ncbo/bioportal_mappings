#!/bin/bash
checkoutPath="./bioportal_mapping"
./runCheckoutBuild.sh
for project in loom uri_match umls_cui umls_mrmap obo_xref; do
    logFile="nohup_${project}_$(date +%Y%m%d).log"
    echo && echo $project $logFile
    $checkoutPath/scripts/runMappings.sh -p $project -s > $logFile 2>&1
done

