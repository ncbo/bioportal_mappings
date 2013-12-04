#!/bin/bash

mvnVersion="apache-maven-3.0.4"
if [ ! -d "$mvnVersion" ]; then
    mvnTar="${mvnVersion}-bin.tar.gz"
    mvnRepo="http://apache.mirrors.tds.net//maven/binaries"
    curl -o $mvnTar $mvnRepo/$mvnTar
    if [ $? -ne 0 ]; then
        echo "$(date): FAILED to download $mvnVersion from $mnvRepo"
        exit 1
    fi
    tar zxvf $mvnTar
fi
if [ ! -x "$mvnVersion/bin/mvn" ]; then
    echo "$(date): FAILED to install $mvnVersion"
    exit 1
fi

# Extract the distribution archive, i.e. apache-maven-3.0.4-bin.tar.gz to the
# directory you wish to install Maven 3.0.4. These instructions assume you chose
# /usr/local/apache-maven. The subdirectory apache-maven-3.0.4 will be created
# from the archive.

CWD=$(pwd)
export M2_HOME=${CWD}/$mvnVersion
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH

# 5. Make sure that JAVA_HOME is set to the location of your JDK, e.g. export
#    JAVA_HOME=/usr/java/jdk1.5.0_02 and that $JAVA_HOME/bin is in your PATH
#    environment variable.

mvn --version

