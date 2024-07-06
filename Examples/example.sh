#!/bin/bash

# This is a comment
# The first line is known as the "shebang"

VARIABLE="This is a variable"

echo "This will pring the value of the variable: $VARIABLE"

read -p "This is a  prompt: Enter your name: " NAME

if [ "$NAME" = "Anumeya" ]; then
  echo "Hello $NAME"
else
  echo "Who the heck are you?"
fi

# Taking parameters/arguments
CHAR="$1"
NUM=$2

# While loop
COUNT=1
while [ $COUNT -le $NUM ]; do
  # For loop
  for i in 1 2 3 4 5; do
    echo -n "$CHAR" # -n => no new line
  done
  COUNT=$((COUNT+1)) # Increment the count
  echo "" # New Line
done
