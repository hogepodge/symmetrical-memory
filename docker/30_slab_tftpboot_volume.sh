docker volume create --name slab_tftpboot_data
docker run -v slab_tftpboot_data:/tftpboot \
           -id \
           --name slab_tftpboot_volume \
           --rm \
           slab_tftpboot_volume 
