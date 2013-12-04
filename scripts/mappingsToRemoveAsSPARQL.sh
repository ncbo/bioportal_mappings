

if [ "$mappingRemoveFile" == "" ]; then
    # No file specified on command line, use a default and verify that
    # it's up-to-date or recreate it.
    mappingRemoveFile="mappingsToRemove.ru"
    pythonScript="mappingsToRemoveAsSPARQL.py"
    pythonScriptRun=0
    if [ -f "$mappingRemoveFile" ]; then
        # Run the python script when the .ru file is older than it.
        if [ "$mappingRemoveFile" -ot "$pythonScript" ]; then
            pythonScriptRun=1
        fi
    else
        # Run the python script when there is no SPARQL file to generate bad
        # mappings.
        pythonScriptRun=1
    fi
    if [ $pythonScriptRun -eq 1 ]; then
        if [ ! -f "$pythonScript" ]; then
            echo "$(date): $0, ERROR: There is a missing python script: $pythonScript" >&2
            exit 1
        fi
        ./$pythonScript > mappingsToRemoveWithComments.ru
        if [ $? -gt 0 ]; then
            echo "$(date): $0, ERROR: Failed to run python script." >&2
            echo "$(date): $0, ERROR: Failed to create mapping remove SPARQL file: $mappingRemoveFile" >&2
            exit 1
        fi
        grep -v "^#" mappingsToRemoveWithComments.ru > $mappingRemoveFile
    fi
fi

