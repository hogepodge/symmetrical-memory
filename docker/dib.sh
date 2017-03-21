docker run -it \
           --name slab_dib \
           -v slab_imagedata:/imagedata \
           -v $PWD/id_rsa.pub:/id_rsa.pub \
           --rm \
           --privileged \
           slab_dib
