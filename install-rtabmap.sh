#!/bin/bash

sudo apt install -y ros-melodic-rtabmap* ros-melodic-octomap* &&\
sudo cp ~/XTDrone/sensing/slam/vio/VINS-Fusion/config/xtdrone_sitl/rgbd.rviz /opt/ros/melodic/share/rtabmap_ros/launch/config/