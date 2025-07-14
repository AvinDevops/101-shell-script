#!/bin/bash

MOVIES=("Avengers" "Infinity war" "End game")

#for this array range is 3
#array starts with index 0

echo "first movie is: ${MOVIES[0]}"
echo "second movie is: ${MOVIES[1]}"
echo "All movies are: ${MOVIES[@]}"