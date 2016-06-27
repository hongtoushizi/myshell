#!/bin/bash
if [ $# -lt 1 ]
then
    echo "-1"
    exit
fi
conn_num=`netstat -an| grep $1 | grep "ESTABLISHED" | wc -l `

echo $conn_num





