FROM ubuntu:18.04

# update package repository and installed packages
RUN apt-get update -y && apt-get upgrade -y

# install gcc, g++, gdb, make, and manual pages for GNU/Linux development
RUN apt-get install -y \
    build-essential \
    gdb \
    manpages-dev 

# copy .gdbinit file to temp folder
COPY .gdbinit /tmp/

# create global .gdbinit and allow for execution of local .gdbinit
RUN touch ~/.gdbinit && \
    echo "set auto-load safe-path /" >> ~/.gdbinit

# copy cleanup script and change to executable
COPY cleanup.sh /tmp/
RUN chmod +x /tmp/cleanup.sh

# copy intialize script and allow for rwx access
COPY initialize.sh /tmp/
RUN chmod 777 /tmp/initialize.sh

# run initialize script on container start
CMD /tmp/initialize.sh