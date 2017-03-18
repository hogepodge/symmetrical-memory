#!/bin/bash
#! /bin/bash
cat > /tmp/create_database.sql <<-EOF
CREATE DATABASE IF NOT EXISTS ironic CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON ironic.* TO 'ironic'@'localhost' \
       IDENTIFIED BY '$MYSQL_IRONIC_PASSWORD';
GRANT ALL PRIVILEGES ON ironic.* TO 'ironic'@'%' \
       IDENTIFIED BY '$MYSQL_IRONIC_PASSWORD';
EOF
mysql -u root -p$MYSQL_ROOT_PASSWORD -h slab_mariadb < /tmp/create_database.sql
