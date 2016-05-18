#!/bin/bash

nohup redis-commander  --redis-host  127.0.0.1    --http-auth-username  admin  --http-auth-password  projectx2015  --port  8081  > /root/redis_commander_log/redis-commander.log  &
