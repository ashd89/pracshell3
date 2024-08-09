#!/bin/bash

pid=`ps -ef | grep test | grep -v grep | tr -s " " | cut -d" " -f2`

//혹은

pid=`ps -ef | grep test | grep -v grep | awk -F " " '{print $2}'`

echo "pid: $pid"

if [ $spring_pid ]
then
	echo "종료중"
	sudo kill -9 $spring_pid

else
	echo "없음"
fi
