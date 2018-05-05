#!/bin/sh
## Getting invoke the scripts in destination server
sshpass -p "password" ssh root@server1 "bash /apps/add_num.sh 2 3" 
