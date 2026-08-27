#!/bin/bash

COURSE="DevOps With AWS"

echo "Before calling script-2: $COURSE"
echo "Process ID of script-1: $$"

./17-script-2.sh

echo "After calling script-2: $COURSE"