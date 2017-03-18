docker run -d \
           --env-file ./config \
           -p 6385:6385 \
           --name slab_ironic_api \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           slab_ironic_api
