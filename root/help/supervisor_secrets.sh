#!/bin/bash
set -e
secretuser=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c32; echo)
secretpass=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c32; echo)
sed -i "s/secretuser/$secretuser/g" /etc/supervisor/supervisord.conf
sed -i "s/secretpass/$secretpass/g" /etc/supervisor/supervisord.conf
touch /help/supervisor_secure