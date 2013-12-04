#!/bin/bash

# ---------------------------------------------------------------------------
# The LOOM java project directory
#
loomProjectPath=".."
classpathFile="$loomProjectPath/.classpath"

# Run maven to create the eclipse project configuration for this maven project.
pushd $loomProjectPath
which mvn > /dev/null && mvn -q eclipse:eclipse
popd

if [ -e $classpathFile ]; then
    echo "#!/bin/bash" > classPath.sh
    cat $classpathFile | grep 'classpathentry kind=\"var\"' | \
        sed -e 's/\.jar.*/.jar/' -e 's/.*M2_REPO/\$M2_REPO/' | \
        sed -e :x -e '$!N; s/\n/:/; tx' | \
        sed -e 's/^/export CLASSPATH=/' > tmp.txt
    grep -q M2_REPO tmp.txt
    if [ $? -eq 0 ]; then
        echo "export M2_REPO=${HOME}/.m2/repository" >> classPath.sh
    fi
    cat tmp.txt >> classPath.sh
    rm tmp.txt
fi

