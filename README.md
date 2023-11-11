# rockylinux-systemd

#Build with

docker build --no-cache -t local/rockylinux-systemd:9.2 .

#Run with 

docker run  -it --rm --mount=type=tmpfs,target=/run  -v /sys/fs/cgroup:/sys/fs/cgroup  local/rockylinux-systemd:9.2  bash

OR

docker run  -it --rm  --tmpfs /run   -v /sys/fs/cgroup:/sys/fs/cgroup  local/rockylinux-systemd  bash


## Pull and run from Docker Hub with

 docker pull --platform linux/amd64 wsoyinka/rockylinux-systemd:9.2

### Run pulled docker container with

docker run  -it --rm --tmpfs /run  -v /sys/fs/cgroup:/sys/fs/cgroup  wsoyinka/rockylinux-systemd:9.2  bash

