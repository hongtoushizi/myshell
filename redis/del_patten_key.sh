#!/bin/bash

pattern=$1;
if [ x"$pattern" == x ]
then
        echo  "默认用删除ct_math前缀的数据"
else
     echo "您将要删除以${pattern}做前缀的数据"
fi

echo  $pattern

#redis-cli keys "ct_math*"  | xargs -p -I {} redis-cli del {}

redis-cli keys "$pattern*"  | xargs -p -I {} redis-cli del {}
