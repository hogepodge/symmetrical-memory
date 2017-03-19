docker run --name slab_tftp \
           -d \
           -v slab_imagedata:/imagedata \
           --rm \
           -p 69:69/udp \
           slab_tftp
