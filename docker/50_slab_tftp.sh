docker run --name slab_tftp \
           -d \
           -v slab_tftpboot_data:/tftpboot \
           --rm \
           -p 8080:8080 \
           slab_tftp
