FROM ubuntu:18.04

# add commands to add sudo user

# update package repository and installed packages
RUN sudo apt-get update && sudo apt-get upgrade

# install gcc, g++, make, etc.
RUN sudo apt-get install build-essential

# install manual pages from GNU/Linux development
RUN sudo apt-get install mangpages-dev

# command to run on container start
#CMD[]