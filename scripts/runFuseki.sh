#!/bin/bash

command=$1

if [ "$command" == "" ]; then
    cat <<END
Usage: $0 <command>
<command> can be 'start' or 'stop'
END
fi

fusekiPID=0
getFusekiPID()
{
    pid=$(ps aux | grep fuseki | grep -v 'grep' | cut -d' ' -f 3)
    if [ "$pid" == "" ]; then
        pid=0
    fi
    fusekiPID=$pid
}

cd fuseki
if [ $? -gt 0 ]; then
    echo "$(date): Cannot locate Fuseki installation" >&2
    exit 1
fi
export FUSEKI_HOME=$(pwd)

if [ "$command" == "start" ]; then
    cd $FUSEKI_HOME
    getFusekiPID
    if [ $fusekiPID -eq 0 ]; then
        mkdir -p loomTdB
        ./fuseki-server --update --loc=./loomTdB /loom 1>&2 > logs.txt & 
        getFusekiPID
        echo "$(date): Started Fuseki SPARQL server, pid=$fusekiPID" >&2
        sleep 5
    fi
fi

if [ "$command" == "stop" ]; then
    cd $FUSEKI_HOME
    getFusekiPID
    if [ $fusekiPID -gt 0 ]; then
        kill -9 $fusekiPID
        rm -rf loomTdB
        echo "$(date): Stopped Fuseki SPARQL server, pid=$fusekiPID" >&2
    else
        echo "$(date): No Fuseki SPARQL server running." >&2
    fi
fi

