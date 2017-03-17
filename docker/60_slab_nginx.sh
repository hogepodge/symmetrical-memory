docker run --name slab_nginx \
           -d \
           -v slab_httpboot_data:/httpboot \
           --rm \
           -p 8080:8080 \
           slab_nginx
