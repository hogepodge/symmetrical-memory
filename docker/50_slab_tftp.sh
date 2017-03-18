docker run --name slab_tftp \
           -d \
           -v slab_tftpboot_data:/tftpboot \
           --rm \
           -p 69:69/udp \
           slab_tftp
