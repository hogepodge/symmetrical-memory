FROM alpine:3.4
MAINTAINER Chris Hoge (chris@openstack.org)
RUN mkdir pxelinux.cfg
RUN mkdir master-images
ADD /boot.ipxe /boot.ipxe
ADD /ipa.initramfs /ipa.initramfs
ADD /ipa.initramfs.sha256 /ipa.initramfs.sha256
ADD /ipa.vmlinuz /ipa.vmlinuz
ADD /ipa.vmlinuz.sha256 /ipa.vmlinuz.sha256
ADD /ipxe.lkrn /ipxe.lkrn
ADD /ipxe.lkrn /ipxe.pxe
ENTRYPOINT ["sh"]
