docker run -it \
           --env-file ./config \
           --name devel \
           --link=slab_rabbit:slab_rabbit \
           --link=slab_mariadb:slab_mariadb \
           --entrypoint=/bin/bash \
           --rm \
           slab_test
