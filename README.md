## [CSE340 Testing Image](https://hub.docker.com/repository/docker/zakattack9/cse340/general)
CSE340 Docker image for compiling, running, and debugging C/C++ code in an Ubuntu Bionic environment without the need for a VM

### Prerequisites
- [Docker Desktop](https://docs.docker.com/get-docker/)
- knowledge on debugging with [gdb](https://sourceware.org/gdb/current/onlinedocs/gdb/)

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
# pull down CSE340 testing image 
$ docker pull zakattack9/cse340:latest

# re-tag pulled down image
$ docker tag zakattack9/cse340:latest cse340

# ...navigate to project directory...

# bind mount current directory and create container with a bash shell
$ docker run --rm -it -v "$(pwd):/testing" -w /testing cse340 && ./cleanup.sh
```

Alternatively, if further customization of the Dockerfile is desired, fork and clone this repo then build the image locally with
```bash
$ docker build -t cse340 . 
```

### Intended workflow
1) Use the `docker run` command above to start container and its bash shell
2) Develop code in preferred IDE
3) Compile code with `gcc` or `g++` in container
4) Run/test code for errors
5) If errors, add `gdb` configurations to `.gdbinit` *(e.g. breakpoints)*
6) Start `gdb` to debug code
7) Exit debugger with `ctrl + c` and repeat from step 2
8) When finished, `ctrl + d` to exit container and auto clean up files

### Additional Notes
- **for Windows** makes sure that your *C* drive is selected under *Resources > File Sharing* in the Docker Desktop settings
- all files and folders in the `docker run` execution directory are copied under a `/testing` folder in the Docker container; the `-w` option will automatically navigate to this directory during the container's startup
- the `docker run` command above creates a container that will bind mount the current directory that it's executed in; this means any file changes in the current directory or in the Docker container's `/testing` directory will be directly reflected on both ends allowing for a live compilation and testing environment
- with the `--rm` option, using `ctrl + d` will exit the container's bash shell and automatically delete the container for cleanup
- a `.gdbinit` is automatically created upon running the container and is executed when starting `gdb`
- the `cleanup.sh` script will automatically remove `.gdbinit`, `cleanup.sh`, and all C/C++ object files when the container is stopped iff `&& ./cleanup.sh` is appended to the end of the `docker run` command above