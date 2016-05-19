#!/bin/bash

MYDATE=`date +%d/%m/%y`
cat <<MAYDAY
---------------------------------------------------------
User:$USER            Host:$THIS_HOST        Date:$MYDATE
---------------------------------------------------------
            1: test-math.classba.com.cn   139.196.34.17
            2: 算法服务器   139.196.204.22 
            3: 昂立web1  139.196.98.231  
            4: 昂立web2  139.196.92.195
            5: 正式平台数据库 139.196.193.12 
            6: 木星253  139.196.54.253
            q|Q : quit
---------------------------------------------------------
MAYDAY
echo -e -n "\tYour Choice [1,2,3,4,5]>"
read CHOICE 
  case $CHOICE in
    1) 
       echo  "test-math"
       sshpass -p  'Pzh6537.!@#' ssh root@139.196.34.17 -p 10010
       ;;
    2) 
       echo  "算法服务器" 
       sshpass -p  'hello2016!@#' ssh root@139.196.204.22 -p 22
       ;;
    3) echo  "昂立web1"
       sshpass -p  'Pzh6537.!@#' ssh root@139.196.98.231 -p 22
       ;;
    4) echo  "昂立web2"
       sshpass -p  'Pzh6537.!@#' ssh root@139.196.92.195 -p 22       
       ;;
    5) echo  "正式平台数据库"
       sshpass -p  'hello2016!@#' ssh root@139.196.193.12 -p 22
       ;;  
    6)
       echo  "s-en.classba.cn    s-math.classba.cn" 
       sshpass -p  'Xplus2015' ssh root@139.196.54.253 -p 22
       ;;   
    H|h)
       cat <<MAYDAY
           This is the help screen ,nothing here yet to help you !
MAYDAY
       ;;
    Q|q) exit 0
       ;;
    *)  echo -e "\t\007 unknown user response"
       ;;
  esac

