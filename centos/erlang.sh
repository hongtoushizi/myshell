#!/bin/bash

wget https://packages.erlang-solutions.com/erlang/esl-erlang/FLAVOUR_1_general/esl-erlang_18.3-1~centos~6_amd64.rpm



#—————更新erlang—————#
wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm


rpm -ivh erlang-solutions-1.0-1.noarch.rpm 

ll /etc/yum.repos.d/ | grep erl

cat /etc/yum.repos.d/erlang_solutions.repo

yum update erlang.x86_64

