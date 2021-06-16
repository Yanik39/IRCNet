#!/bin/bash
set -e
apt-get update -qq &>/dev/null
apt-get -y upgrade -qq &>/dev/null 
python3 -m pip -q install -r <(pip freeze) --upgrade &>/dev/null
npm install -g npm@latest &>/dev/null
npm install -g yarn@latest &>/dev/null
yarn global add thelounge &>/dev/null
npm cache clean --force &>/dev/null
yarn cache clean --all &>/dev/null
apt-get clean autoclean -qq &>/dev/null
apt-get autoremove -y -qq &>/dev/null
rm -rf /var/lib/apt/* /var/lib/cache/* /var/lib/log/* /tmp/* /var/tmp/*
rm -rf /usr/share/doc/ /usr/share/man/ /usr/share/locale/
rm -rf /root/.cache /root/.local /root/.gnupg /root/.npm /root/.config
touch /help/first_run_done