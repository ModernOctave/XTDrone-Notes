# Setup XTDrone
See [Setup Instructions](/setup.md)

# Run
## Install Ceres Solver
```
./install-ceres.sh
```

## Install VINS-Fusion
```
./install-vins.sh
```

## Install RTABMap
```
./install-rtabmap.sh
```

## Change Camera
Create a copy of ~/PX4_Firmware/launch/indoor1.launch.

```
cp ~/PX4_Firmware/launch/indoor1.launch ~/PX4_Firmware/launch/indoor1-depth.launch
```

Change the camera from `iris_stereo_camera` to `iris_realsense_camera` so that depth map data is available.

```
sed -i 's/iris_stereo_camera/iris_realsense_camera/g' ~/PX4_Firmware/launch/indoor1-depth.launch
```

## Install ego_planner
```
./install-ego-planner.sh
```

## Launch
Start the simulation
```
roslaunch px4 indoor1-depth.launch
```

Start VINS-Fusion
```
source ~/catkin_ws/devel/setup.bash
bash ~/catkin_ws/scripts/xtdrone_run_vio.sh
```

Start RTABMap
```
roslaunch vins rtabmap_vins.launch
```

Change coordinate system direction of camera pose
```
python ~/XTDrone/motion_planning/3d/ego_transfer.py iris 0
```

Start rviz
```
rviz -d ~/XTDrone/motion_planning/3d/ego_rviz.rviz
```

Start ego_planner
```
roslaunch ego_planner single_uav.launch 
```

## Control
Establish a connection to the drone
```
cd ~/XTDrone/communication
python multirotor_communication.py iris 0 
```

Use keyboard to control the drone
```
cd ~/XTDrone/control/keyboard
python multirotor_keyboard_control.py iris 1 vel
```

# Troubleshooting
## Build space was previously built by catkin build / catkin_make.
```
catkin clean
```