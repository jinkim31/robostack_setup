#!/bin/sh
#sudo chown -R jinkim ~/miniconda3
conda install mamba -c conda-forge
mamba create -n ros ros-noetic-desktop-full -c conda-forge -c robostack-staging
conda activate ros
mamba install compilers cmake pkg-config make ninja colcon-common-extensions
mamba install catkin_tools
conda deactivate
conda activate ros
mamba install rosdep
rosdep init
rosdep update
conda deactivate
conda activate ros
