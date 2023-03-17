# Visual Inertial Odometer (VIO)
## XTDrone Docker
### Install NVIDIA Driver
`sudo apt-get install nvidia-driver-460`
### Install NVIDIA Docker
`curl https://get.docker.com | sh && sudo systemctl --now enable docker`
### Get Docker Image

### Create Container
`sudo docker run --runtime=nvidia --name XTDrone -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY -e XAUTHORITY -e NVIDIA_DRIVER_CAPABILITIES=all xtdrone:1.3`


## Ubuntu 18.04
### 1. Install Dependencies
#### 1.1 ROS
`./install-ros-melodic`

#### 1.2 Ceres Solver
`./install-ceres`