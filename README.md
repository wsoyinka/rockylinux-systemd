# rockylinux-systemd

#Build with

docker build --no-cache -t local/rockylinux-systemd:9.2 .

#Run with 

docker run  -it --mount=type=tmpfs,target=/run  -v /sys/fs/cgroup:/sys/fs/cgroup  local/rockylinux-systemd:9.2  bash

