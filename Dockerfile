FROM ubuntu:18.04

# update package repository and installed packages
RUN apt-get update -y && apt-get upgrade -y

# install gcc, g++, gdb, make, and manual pages for GNU/Linux development
RUN apt-get install -y \
  build-essential \
  gdb \
  manpages-dev 
