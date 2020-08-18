#!/bin/bash
# TODO add more sys args for changing multiple robots
python3 /home/eskil/ros-multibot-script/turtler.py $1;
export TURTLEBOT3_MODEL=$(cat .current_turtle);
# Echo current serrsion var
changed_variable="TURTLEBOT3_MODEL variable now set to:";
echo "${changed_variable} $(cat .current_turtle)"