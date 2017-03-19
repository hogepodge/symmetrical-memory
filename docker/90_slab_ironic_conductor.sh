docker run -d \
           --env-file ./config \
           --name slab_ironic_conductor \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           -v slab_tftpboot_data:/tftpboot \
           -v slab_httpboot_data:/httpboot \
           slab_ironic_conductor
