#!/bin/bash
echo "Preparing patching wp-config.php ..."

WP_CONFIG_PATH="/bitnami/wordpress/wp-config.php"
sed -i "s/define( 'DB_COLLATE', '' );/define( 'DB_COLLATE', 'utf8mb4_bin' );/g" $WP_CONFIG_PATH

/opt/bitnami/scripts/wordpress/entrypoint.sh /opt/bitnami/scripts/nginx-php-fpm/run.sh