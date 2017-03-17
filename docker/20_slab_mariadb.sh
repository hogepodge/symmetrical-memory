docker run -d \
           --hostname slab_mariadb \
           --name slab_mariadb \
           -e MYSQL_ROOT_PASSWORD="$MYSQL_ROOT_PASSWORD" \
           mariadb:10.1.22

