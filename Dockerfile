FROM ubuntu:18.04

# add commands to add sudo user

# update package repository and installed packages
# RUN sudo apt-get update && sudo apt-get upgrade
RUN apt-get update -y && apt-get upgrade -y

# install gcc, g++, gdb, make, and manual pages for GNU/Linux development
RUN apt-get install -y \
  build-essential \
  gdb \
  manpages-dev 
