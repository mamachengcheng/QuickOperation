#!/bin/bash
##
# author: 		  mcc
# date:   	2017/6/23
# describe: 
##

echo "Welecom use beluga-openserver!"
echo "Please write your username for server:"
read userName
echo "Please write your IP for server:"
read IP
echo "Please write your password for server:"
read password
/usr/bin/expect <<EOF
set timeout 100
spawn ssh -l $userName $IP
expect "password: "
send "$password\n"
set timeout 10000
expect eof
EOF