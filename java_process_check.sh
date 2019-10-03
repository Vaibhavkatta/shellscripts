#!/bin/sh
host="$1"

pmonchk=`ssh -q -o StrictHostKeyChecking=no root@$1 ps -ef | grep -v grep | grep -E -c "java"`
if [ ${pmonchk} -ge 2 ] ; then
        echo "${2} OK - ${pmonchk} Java process(es) running"
        exit 0
    else
        echo "${2} Java Process is DOWN"
        exit 2
fi


