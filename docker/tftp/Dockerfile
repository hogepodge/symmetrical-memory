FROM centos:7
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum install -y tftp-server xinetd
EXPOSE 69 69/udp
ENTRYPOINT ["/usr/sbin/in.tftpd", "--foreground", "--address", "0.0.0.0:69", "--secure", "-v", "-v", "-v", "-v", "-s", "--map-file", "/tftpboot/map-file", "/tftpboot"]
