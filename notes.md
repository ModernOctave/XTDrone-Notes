# Setup XTDrone
See [Setup Instructions](setup.md)

# 3D Dense Reconstruction with VINS-Fusion & RTABMap
## Install Ceres Solver
```./install-ceres```

## Install VINS-Fusion
```./install-vins```

## Install RTABMap
```./install-rtabmap```

## Change Camera
Create a copy of ~/PX4_Firmware/launch/indoor1.launch.

```cp ~/PX4_Firmware/launch/indoor1.launch ~/PX4_Firmware/launch/indoor1-depth.launch```

Change the camera from `iris_stereo_camera` to `iris_realsense_camera` so that depth map data is available.

```
sed -i 's/iris_stereo_camera/iris_realsense_camera/g' ~/PX4_Firmware/launch/indoor1-depth.launch
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