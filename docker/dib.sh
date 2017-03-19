docker run -it \
           --name slab_dib \
           -v slab_tftpboot_data:/tftpboot \
           -v slab_httpboot_data:/httpboot \
           --rm \
           --privileged \
           slab_dib
