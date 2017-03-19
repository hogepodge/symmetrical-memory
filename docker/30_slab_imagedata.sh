docker volume create --name slab_imagedata
docker run -v slab_imagedata:/imagedata \
           -id \
           --name slab_imagedata \
           --rm \
           slab_imagedata
