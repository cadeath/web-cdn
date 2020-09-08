#!/bin/sh

IP=$1

echo "Configuring IP Address to $IP"
sed -i "s/IPADDR/$IP/g" cdn-eskie.conf