# Main Build
FROM rockylinux:9.2


# Install systemd
RUN dnf install -y systemd systemd-udev \
    && dnf clean all

# Disable multi-user.target.wants, this can interfere with
# the parent console on linux systems when using systemd
# as a container subcomponent
RUN rm -f /lib/systemd/system/multi-user.target.wants/*

# Specify a different stop signal for systemd
#STOPSIGNAL SIGRTMIN+3

# Mask and unmask services
RUN systemctl mask systemd-firstboot.service systemd-udevd.service systemd-modules-load.service \
 && systemctl unmask systemd-logind

# tmpfs
#RUN --mount=type=tmpfs,target=/run

#VOLUME [ "/sys/fs/cgroup" ]

# Execute systemd via the container-entrypoint.sh script
ENTRYPOINT [""]
