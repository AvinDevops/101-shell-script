#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script, course: $COURSE"
echo "PID of the current shell script: $$"

#./15-other-script.sh 
source ./15-other-script.sh

echo "After calling other script, course: $COURSE"
