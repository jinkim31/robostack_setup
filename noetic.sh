#!/bin/sh
#sudo chown -R jinkim ~/miniconda3
yes | conda install mamba -c conda-forge
yes | mamba create -n ros ros-noetic-desktop-full -c conda-forge -c robostack-staging
conda activate ros
conda config --env --add channels conda-forge
conda config --env --add channels robostack-staging
conda config --env --remove channels defaults
yes | mamba install compilers cmake pkg-config make ninja colcon-common-extensions
yes | mamba install catkin_tools
conda deactivate
conda activate ros
yes | mamba install rosdep
rosdep init
rosdep update
conda deactivate
conda activate ros
