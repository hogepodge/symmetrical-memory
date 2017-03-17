FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN mkdir data
RUN mkdir data/pxelinux.cfg
RUN mkdir data/master-images
ADD /boot.ipxe /data/boot.ipxe
ADD /ipa.initramfs /data/ipa.initramfs
ADD /ipa.initramfs.sha256 /data/ipa.initramfs.sha256
ADD /ipa.vmlinuz /data/ipa.vmlinuz
ADD /ipa.vmlinuz.sha256 /data/ipa.vmlinuz.sha256
ADD /ipxe.lkrn /data/ipxe.lkrn
ADD /ipxe.lkrn /data/ipxe.pxe
ENTRYPOINT ["cp", "-r", "/data/*", "/httpboot/."]
