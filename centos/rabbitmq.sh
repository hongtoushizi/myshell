#!/bin/bash

#—————更新erlang—————#
wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm


rpm -ivh erlang-solutions-1.0-1.noarch.rpm 

ll /etc/yum.repos.d/ | grep erl

cat /etc/yum.repos.d/erlang_solutions.repo

yum update erlang.x86_64

#———————————————安装rabbitmq—————————————————————————————————————————————————#
wget http://www.rabbitmq.com/releases/rabbitmq-server/v3.6.1/rabbitmq-server-3.6.1-1.noarch.rpm


rpm -ivh rabbitmq-server-3.6.1-1.noarch.rpm