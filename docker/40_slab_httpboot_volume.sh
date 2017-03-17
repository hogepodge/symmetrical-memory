docker volume create --name slab_httpboot_data
docker run -v slab_httpboot_data:/httpboot \
           -id \
           --name slab_httpboot_volume \
           --rm \
           slab_httpboot_volume
