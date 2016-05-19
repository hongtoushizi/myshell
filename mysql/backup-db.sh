#!/bin/bash

# "usage: $0 file.gz dbName"

mysqlRootPass="projectx2015"
outputFile=""
dbName=""

if [ x"$1" != x ]
then
	outputFile="$1"
fi
if [ x"$2" != x ]
then
	dbName="$2"
fi

tmpdir=$(mktemp -d /tmp/XXXXXX)

if [ x"$dbName" = x ]
then
	dialog --menu "Databases - you can also specify on arguments: \n\n\$ $0 dbName outputFile.sql.gz" \
		15 50 20 \
		"AllDatabases" "ALL DBs" \
		"jupiter_math" "数学业务库" \
		"question_bank_math" "数学题库" \
		"jupiter_sub" "英语业务库" \
		"question_bank" "英语题库" \
	2> "$tmpdir"/dbName
	dbName=$(cat "$tmpdir"/dbName)
	if [ x"$dbName" == x ]
	then
		echo "Quit."
		exit 0
	fi
fi

if [ x"$outputFile" = x ]
then
	timestamp=$(date +"%Y-%m-%d.%H-%M-%S.%z")

	dialog --inputbox "Save As - you can also specify on arguments: \n\n\$ $0 dbName outputFile.sql.gz" \
		10 70 /tmp/$timestamp.$dbName.sql.gz 2> "$tmpdir"/outputFile
	outputFile=$(cat "$tmpdir"/outputFile)
	if [ x"$outputFile" == x ]
	then
		echo "Quit."
		exit 0
	fi
fi

echo ""
echo ""

printf "\x1B[37;42m"  #white/green
echo "--[mysqldump]--"
printf "\x1B[0m"  #reset attributes

if [ x"$dbName" == x"AllDatabases" ]
then
	echo "mysqldump --add-drop-database --all-databases -u root -p$mysqlRootPass | gzip > $outputFile"
	mysqldump --add-drop-database --all-databases -u root -p$mysqlRootPass | gzip > $outputFile
else
	echo "mysqldump --add-drop-database -B $dbName -u root -p$mysqlRootPass | gzip > $outputFile"
	mysqldump --add-drop-database -B $dbName -u root -p$mysqlRootPass | gzip > $outputFile
fi

printf "\x1B[37;42m"  #white/green
echo "--[DONE]--"
printf "\x1B[0m"  #reset attributes

echo "Type this command in your client side to copy the file:"
printf "\x1B[33m"  #yellow foreground
echo "scp root@139.196.34.17:$outputFile /tmp/"
echo  "scp $outputFile  root@139.196.34.17:/tmp/"
printf "\x1B[0m"  #reset attributes

rm -rf "$tmpdir"


