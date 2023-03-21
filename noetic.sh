#!/bin/sh

sudo conda install mamba -c conda-forge
sudo mamba create -n ros ros-noetic-desktop-full -c conda-forge -c robostack-staging
conda activate ros
sudo mamba install compilers cmake pkg-config make ninja colcon-common-extensions
sudo mamba install catkin_tools
conda deactivate
conda activate ros
sudo mamba install rosdep
sudo rosdep init
sudo rosdep update
conda deactivate
conda activate ros
