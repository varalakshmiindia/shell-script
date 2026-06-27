#!/bin/bash

# special variables
echo "all variables passed to script: $@"
 echo "n of variables passed: $#"
echo "first number: $1"
echo "script name: $0"  //file name
 
 echo "which directory: $PWD"
 echo "user home directory: $HOME"
  echo "pid of current script: $$"
  sleep 5
   echo "pid of background cmd of running just now: $!"
   wait $!
   echo "line number: $LINENO"
    echo "script executed in $SECONDS seconds"
    echo "random number $RANDOM"
 echo "exit code of previous cmd $?"




