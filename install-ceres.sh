#!/bin/bash

sudo apt-get update &&\
sudo apt-get install -y wget &&\
wget -nc http://ceres-solver.org/ceres-solver-2.1.0.tar.gz &&\
tar zxf ceres-solver-2.1.0.tar.gz &&\
sudo apt-get install -y cmake &&\
sudo apt-get install -y libgoogle-glog-dev libgflags-dev &&\
sudo apt-get install -y libatlas-base-dev &&\
sudo apt-get install -y libeigen3-dev &&\
sudo apt-get install -y libsuitesparse-dev &&\
mkdir ceres-bin &&\
cd ceres-bin &&\
cmake ../ceres-solver-2.1.0 &&\
make -j3 &&\
make test &&\
make install