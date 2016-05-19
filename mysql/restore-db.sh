#!/bin/bash

if [ x"$1" = x ]
then
	echo "usage: $0 file.gz"
	exit 1
fi

echo "cat $1 | gunzip --to-stdout - | mysql -u root -pprojectx2015"
cat $1 | gunzip --to-stdout - | mysql -u root -pprojectx2015

