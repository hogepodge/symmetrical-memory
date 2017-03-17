FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN mkdir data
RUN mkdir data/pxelinux.cfg
RUN mkdir data/master-images
ADD /map-file /data/map-file
ADD /pxelinux.0 /data/pxelinux.0
ADD /undionly.kpxe /data/undionly.kpxe
ADD /ipxe.lkrn /data/ipxe.lkrn
ADD /ipxe.lkrn /data/ipxe.pxe
ADD /bootstrap.sh /bootstrap.sh
ENTRYPOINT ["/bootstrap.sh"]
