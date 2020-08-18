#!/bin/bash
python3 /home/eskil/ros-multibot-script/turtler.py $1;
export TURTLEBOT3_MODEL=$(cat .current_turtle);