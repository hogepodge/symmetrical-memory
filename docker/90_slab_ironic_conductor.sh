docker run -d \
           --env-file ./config \
           --name slab_ironic_conductor \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           -p 3260:3260 \
           -v slab_imagedata:/imagedata \
           slab_ironic_conductor
