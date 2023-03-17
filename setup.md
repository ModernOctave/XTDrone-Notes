# XTDrone Docker
## Install NVIDIA Driver
```sudo apt-get install nvidia-driver-460```

## Install NVIDIA Docker
[Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)

## Get Docker Image
[Guide](https://www.yuque.com/xtdrone/manual_en/docker#a73vU)

## Create Container
```docker run --runtime=nvidia --name XTDrone -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY -e XAUTHORITY -e NVIDIA_DRIVER_CAPABILITIES=all xtdrone:1.3```

## Change to Global Repositories
```
sed -i 's/https:\/\/mirrors.tuna.tsinghua.edu.cn/http:\/\/archive.ubuntu.com/g' /etc/apt/sources.list &&\
sed -i 's/http:\/\/mirrors.ustc.edu.cn/http:\/\/packages.ros.org/g' /etc/apt/sources.list.d/ros-latest.list
```