FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN mkdir /data

RUN mkdir /data/httpboot
RUN mkdir /data/httpboot/pxelinux.cfg
RUN mkdir /data/httpboot/master_images
ADD /httpboot/boot.ipxe /data/httpboot/boot.ipxe
ADD /httpboot/ipa.initramfs /data/httpboot/ipa.initramfs
ADD /httpboot/ipa.initramfs.sha256 /data/httpboot/ipa.initramfs.sha256
ADD /httpboot/ipa.vmlinuz /data/httpboot/ipa.vmlinuz
ADD /httpboot/ipa.vmlinuz.sha256 /data/httpboot/ipa.vmlinuz.sha256
ADD /httpboot/ipxe.lkrn /data/httpboot/ipxe.lkrn
ADD /httpboot/ipxe.lkrn /data/httpboot/ipxe.pxe

RUN mkdir /data/tftpboot
RUN mkdir /data/tftpboot/pxelinux.cfg
RUN mkdir /data/tftpboot/master_images
ADD /tftpboot/map-file /data/tftpboot/map-file
ADD /tftpboot/pxelinux.0 /data/tftpboot/pxelinux.0
ADD /tftpboot/undionly.kpxe /data/tftpboot/undionly.kpxe
ADD /tftpboot/ipxe.lkrn /data/tftpboot/ipxe.lkrn
ADD /tftpboot/ipxe.lkrn /data/tftpboot/ipxe.pxe

ADD /bootstrap.sh /bootstrap.sh
ENTRYPOINT ["/bootstrap.sh"]
