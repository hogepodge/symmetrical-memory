FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN mkdir pxelinux.cfg
RUN mkdir master-images
ADD /map-file /map-file
ADD /pxelinux.0 /pxelinux.0
ADD /undionly.kpxe /undionly.kpxe
ADD /ipxe.lkrn /ipxe.lkrn
ADD /ipxe.lkrn /ipxe.pxe
ENTRYPOINT ["sh"]
