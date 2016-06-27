#!/bin/bash

echo  "{"
echo -e "\"data\":["
FIRST_LINE="1"
for port in `netstat -ntpl | grep "tcp" | awk  '{print $4}'   | awk -F ":" '{print $2}' | sort -u`
do
	#statements
    conn_num=`netstat  -an | grep $port  | grep  "ESTABLISHED" |wc -l`
    if [ $FIRST_LINE == "1" ]
    then
	echo  -e -n  "\"{#PORTNUM}\":\"$port\"}"
	#echo  $FIRST_LINE."-----"
        FIRST_LINE="0"
        #echo  $FIRST_LINE."----2---"
        #echo "test"
    else
    	echo  -e -n  ",  \n\"{#PORTNUM}\":\"$port\"}"
    fi
done
echo -e " \n ] \n } \n"
