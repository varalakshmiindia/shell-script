#!/bin/bash

# TIMESTAMP=$(date)
# echo "Time is : $TIMESTAMP"

    START_TIME=$(date +%s)
    sleep 10
    END_TIME=$(date +%s)

    total_time=$(($END_TIME-$START_TIME))
    echo "total time $total_time"