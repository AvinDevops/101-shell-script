#!/bin/bash

SOURCE_DIR=/tmp/app-logs

if [ -d $SOURCE_DIR ]
then
    echo "source dir:$SOURCE_DIR exists"
else
    echo "source dir:$SOURCE_DIR does not exists, please create it"
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)

echo "files to delete: $FILES"