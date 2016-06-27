#!/bin/bash

curl —silent —location https://rpm.nodesource.com/setup_4.x | bash -
yum install -y nodejs

npm install -g redis-commander

redis-commander  --redis-host  fb8ef72f18ba48ad.m.cnsha.kvstore.aliyuncs.com    --redis-password  fb8ef72f18ba48ad:Pzh6537projectx  > redis-commander.log  &

