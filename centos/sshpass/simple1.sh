#!/bin/bash 
 
cat <<MENU  
    a   =>  10.101.81.238  
    10.101.81.238   =>  10.101.81.238  
    b   =>  192.168.4.151  
    192.168.4.151   =>  192.168.4.151  
    c   =>  192.168.4.2  
    192.168.4.2     =>  192.168.4.2  
  
>>> 请输入ip或序号 <<<  
MENU  
    echo -n "Your choose:"  
    read host  
    case "$host" in  
        a|10.101.81.238)  
            exec /usr/local/bin/sshpass -p 123456  ssh root@10.101.81.238 -p22  
            ;;  
        b|192.168.4.151)  
            exec /usr/local/bin/sshpass -p 'sdfsdf'  ssh root@192.168.4.151 -p22  
            ;;  
        c|192.168.4.2)  
            exec /usr/local/bin/sshpass -p 'wfssfs'  ssh root@192.168.4.2 -p22  
            ;;  
        *)  
        echo "Error, No host"  
        ;;  
    esac  

