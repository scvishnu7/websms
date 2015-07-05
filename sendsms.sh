#!/bin/bash

#host 202.70.67.131
if (( $# < 3 )); then
	echo "Usage: $0 <username> <recipient number> <'message text'>"
	exit 0
fi

username=$1
recipient=$2
message=$3

echo -n "Password: "
read -s password

curl --request POST 'http://www.meet.net.np/meet/action/login' --data "username=$username" --data "password=$password" --data "loginPage=true" --data "loginbut=login"  -c cookies.dat
#read the output and determine whether login successed or not
#read config file for ease of use
# read user input

curl --request POST 'http://www.meet.net.np/meet/mod/sms/actions/send.php' --data "recipient=$recipient" --data "message=$message" --data "sendbutton=Send Now" -b cookies.dat -v
#Analise output and determin whether sms is sent successfully or not :D
