docker run --name slab_nginx \
           -d \
           -v slab_imagedata:/imagedata \
           --rm \
           -p 8080:8080 \
           slab_nginx
