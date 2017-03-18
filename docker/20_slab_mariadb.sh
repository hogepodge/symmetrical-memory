docker run -d \
           --env-file ./config \
           --hostname slab_mariadb \
           --name slab_mariadb \
           --env-file config \
           mariadb:10.1.22

