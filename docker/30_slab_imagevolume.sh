# Start by dropping in the local files that everyone will want
sudo mkdir /imagevolume
sudo mkdir /imagevolume/tftpboot
sudo mkdir /imagevolume/tftpboot/pxelinux.cfg
sudo mkdir /imagevolume/httpboot
sudo mkdir /imagevolume/httpboot/pxelinux.cfg
sudo cp tftp/map-file /imagevolume/tftpboot/map-file
docker run -v /imagevolume/tftpboot:/tftpboot:z -v /imagevolume/httpboot:/httpboot:z --name slab_imagevolume -id alpine sh
