#!/bin/bash

scriptPath=$(cd `dirname $0`; pwd)

echo "－－－－－－－－－－－－－－－杀死进程－－－－－"
#./kill_redis_commander.sh
"$scriptPath/kill_redis_commander.sh"

echo "----------------启动进程－－－－－－－－－－－－"
#./redis_commander_start.sh

"$scriptPath/redis_commander_start.sh"
