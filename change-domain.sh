#!/bin/sh

DOMAIN=$1

echo "Configuring to website, $DOMAIN"
sed -i "s/DOMAINNAME/$DOMAIN/g" cdn-eskie.conf