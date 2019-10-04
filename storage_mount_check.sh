#!/bin/bash
var=$1
for i in $1 ; do ssh -xq -o StrictHostKeyChecking=no '-t' root@$i "if [ -d "/usr/local/storage" ];then 
echo "/Storage Mount point is exist in $i" 
exit 0
else 
echo " /Storage Mount point does not exist in $i" 
exit 2
fi ";
done

