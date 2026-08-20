#!/bin/bash

MOVIES=("Ironman" "Spiderman" "Wolverine")

#we can declare varibales in 2 ways $MOVIES , ${MOVIES}
echo "first index is: ${MOVIES[0]}"
echo "second index is: ${MOVIES[1]}"
echo "All values are: ${MOVIES[@]}"
