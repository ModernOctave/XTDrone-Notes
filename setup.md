# XTDrone Docker
## Install NVIDIA Driver
```sudo apt-get install nvidia-driver-460```

## Install NVIDIA Docker
[Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)

## Get Docker Image
Download docker image from [here](https://drive.google.com/file/d/19ToxmvjeOwSZznAMA-2XUPFPec58uzTR/view?usp=sharing).
```
docker load -i xtdrone_1_4.tar.gz
```

The above procedure provide a modified version v1.4 of the docker image. The modified version uses global repositories instead of the chinese mirrors. 

The original image can be found [here](https://www.yuque.com/xtdrone/manual_en/docker#a73vU).

## Create Container
```
docker run --runtime=nvidia --name XTDrone -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY -e XAUTHORITY -e NVIDIA_DRIVER_CAPABILITIES=all xtdrone:1.3
```