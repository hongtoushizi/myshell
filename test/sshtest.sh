#!/bin/bash

MYDATE=`date +%d/%m/%y`
THIS_HOST=`hostname -s`
USER=`whoami`
while :
do
  tput clear 
  cat <<MAYDAY
---------------------------------------------------------
User:$USER            Host:$THIS_HOST        Date:$MYDATE
---------------------------------------------------------
            1:List files in current directory
            2:Use the vi editor
            3:See who is on the system
            H:Help screen
            Q:Exit Menu
---------------------------------------------------------
MAYDAY
echo -e -n "\tYour Choice [1,2,3,H,Q]>"
read CHOICE 
  case $CHOICE in
    1) ls
       ;;
    2) vi
       ;;
    3) who
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
echo -e -n "\tHit the return key to continue"
read DUMMY
done
