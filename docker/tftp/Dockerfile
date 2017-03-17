FROM centos:7
MAINTAINER Chris Hoge (chris@openstack.org)
RUN yum install tftp-server xinetd
ENTRYPOINT ["/usr/sbin/in.tftpd --foreground --address 0.0.0.0:69 --secure -v -v -v -v -s --map-file /tftpboot/map-file /tftpboot"]
