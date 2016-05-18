#!/bin/bash
pids=$(ps aux |grep redis-commander |grep -v grep |awk -F' ' '{print $2}')

echo "pid";


for id in $pids
do
  echo $id
  kill -9 $id
done




