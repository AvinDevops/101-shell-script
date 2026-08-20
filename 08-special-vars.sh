#!/bin/bash

echo "All variables passed: $@"
echo "Num of variables passed: $#"
echo "Current shell script name: $0"
echo "Current username: $USER"
echo "Current working dir: $PWD"
echo "Current hostname: $HOSTNAME"
echo "process id of current shell script: $$"
sleep 60 &
echo "process id of last background command: $!"