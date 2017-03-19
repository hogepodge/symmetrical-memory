# Starts the mariadb service along with named backing volume storage
# in case you want to preserve the database during a migration or
# upgrade. Default database password is stored in the environment
# configuration file.
docker volume create --name slab_database
docker run -d \
           -v slab_database:/var/lib/mysql \
           --env-file ./config \
           --hostname slab_mariadb \
           --name slab_mariadb \
           --env-file config \
           mariadb:10.1.22

