#!/bin/bash

echo "All variables : $@"
echo "No of variables passed: $#"
echo "present working directory: $PWD"
echo "what is the current script name: $0"
echo "which user running this script: $USER"
echo "what is hostname: $HOSTNAME"
echo "what is PID of this script: $$"
sleep 60 &
echo "what is the PID of last background command: $!"