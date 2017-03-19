cat > /etc/ironic/ironic.conf <<-EOF
[DEFAULT]
enabled_network_interfaces = noop
enabled_drivers = agent_ipmitool,pxe_ssh,pxe_ipmitool
debug = $IRONIC_DEBUG
auth_strategy = noauth
tempdir = /imagedata/tmp

[oslo_messaging_rabbit]
transport_url = rabbit://$RABBITMQ_DEFAULT_USER:$RABBITMQ_DEFAULT_PASS@slab_rabbit:5672/
rabbit_host = slab_rabbit
rabbit_userid = $RABBITMQ_DEFAULT_USER
rabbit_password = $RABBITMQ_DEFAULT_PASS

[pxe]
pxe_append_params = systemd.journald.forward_to_console=yes
pxe_config_template = \$pybasedir/drivers/modules/ipxe_config.template
tftp_server = 192.168.30.1
tftp_root = /imagedata/tftpboot
tftp_master_path = /imagedata/tftpboot/master_images
pxe_bootfile_name = undionly.kpxe
ipxe_enabled = true
ipxe_boot_script = /etc/ironic/boot.ipxe
instance_master_path = /imagedata/httpboot/master_images
images_path = /imagedata/tmp

[deploy]
http_url = http://192.168.30.1:8080/
http_root = /imagedata/httpboot

[conductor]
api_url = http://192.168.30.1:6385/
clean_nodes = false
automated_clean = false

[database]
connection = mysql+pymysql://ironic:$MYSQL_IRONIC_PASSWORD@slab_mariadb/ironic?charset=utf8

[dhcp]
dhcp_provider = none

[ilo]
use_web_server_for_images = true

[inspector]
enabled = false
EOF
