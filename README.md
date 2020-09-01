# CSE340 Testing Image
CSE340 Docker image for testing code on Ubuntu Bionic

### Prerequisites
- [Docker Desktop](https://docs.docker.com/get-docker/)
- debugging with `gdb` breakpoints

### What's included in this image
- `Ubuntu 18.04`
- `gcc`
- `g++`
- `gdb`
- `make`
- `dpkg-dev`
- `libc6-dev`

### How to run
```bash
# pull down CSE 340 testing image 
$ docker pull zakattack9/cse340:latest

# bind mount current directory and create container
$ docker run --rm -it -v "$(pwd):/testing" -w /testing cse340
```

Alternatively, you may also fork and clone this repo and build the image locally with
```bash
$ docker build -t cse340 . 
```

### Notes
- the above `docker run` command will bind mount the current directory that it's executed in; this means any file changes in this directory will be directly reflected in the Docker container's file system therefore, you do not need to re-execute the run command when any changes are made in the execution directory
- the current directory's files is copied under a `/testing` folder in the Docker container; the `-w` option will automatically navigate to this directory upon the container's startup
- `ctrl + d` will exit the container's bash shell and automatically delete the container for cleanup due to the `--rm` option
