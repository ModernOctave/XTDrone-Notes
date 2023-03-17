#!/bin/bash

cp -r ~/XTDrone/sensing/slam/vio/VINS-Fusion ~/catkin_ws/src/ &&\
cp ~/XTDrone/sensing/slam/vio/xtdrone_run_vio.sh ~/catkin_ws/scripts &&\
cd ~/catkin_ws &&\
catkin build