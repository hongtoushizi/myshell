#!/bin/bash
#echo "esl-erlang_18.3-1~centos~6_amd64.rpm"
#wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_18.3-1~centos~6_amd64.rpm


#—————更新erlang—————#
echo "更新erlang"
wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm

echo "安装erlang"
rpm -ivh erlang-solutions-1.0-1.noarch.rpm 

ll /etc/yum.repos.d/ | grep erl

cat /etc/yum.repos.d/erlang_solutions.repo

# yum update erlang.x86_64
yum install erlang

#———————————————安装rabbitmq—————————————————————————————————————————————————#
echo "安装rabbitmq"
wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.1/rabbitmq-server-3.6.1-1.noarch.rpm


rpm -ivh rabbitmq-server-3.6.1-1.noarch.rpm

#———启动服务－－－－－－－
rabbitmq-server 
