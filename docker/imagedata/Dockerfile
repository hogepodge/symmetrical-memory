FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN mkdir /data \
 && mkdir /data/tmp \
 && mkdir /data/cache \
 && mkdir /data/httpboot \
 && mkdir /data/httpboot/pxelinux.cfg \
 && mkdir /data/httpboot/master_images \
 && mkdir /data/tftpboot \
 && mkdir /data/tftpboot/pxelinux.cfg \
 && mkdir /data/tftpboot/master_images

COPY /httpboot /data/httpboot
COPY /tftpboot /data/tftpboot

ADD /bootstrap.sh /bootstrap.sh
ENTRYPOINT ["/bootstrap.sh"]
