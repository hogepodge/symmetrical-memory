# Starts the nginx service, serving data from the previously initialized
# imagedata volume.
docker run --name slab_nginx \
           -d \
           -v slab_imagedata:/imagedata \
           --rm \
           -p 8080:8080 \
           slab_nginx
