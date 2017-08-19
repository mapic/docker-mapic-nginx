#!/bin/bash

# add MAPIC_DOMAIN to nginx.conf
CONFIG_FILE=/mapic/nginx.conf
CURRENT="server_name localhost;"
DOMAIN="server_name $MAPIC_DOMAIN;" 

echo "CONFIG_FILE: $CONFIG_FILE"
echo "CURRENT: $CURRENT"
echo "DOMAIN: $DOMAIN"

sed -i "/$CURRENT/c\\$DOMAIN" $CONFIG_FILE

cat /mapic/nginx.conf

nginx -c /mapic/nginx.conf