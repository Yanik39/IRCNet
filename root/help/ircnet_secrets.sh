#!/bin/bash

set -e

atheme_unreal=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c32; echo)
thelounge_unreal=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c32; echo)
cloak_1_unreal=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c64; echo)
cloak_2_unreal=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c64; echo)
cloak_3_unreal=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c64; echo)

sed -i "s/unreal_pass/$atheme_unreal/g" /home/ircnet/Atheme-Services/etc/atheme.conf
sed -i "s/atheme_pass/$atheme_unreal/g" /home/ircnet/UnrealIRCd/conf/unrealircd.conf

sed -i "s/unreal_pass/$thelounge_unreal/g" /home/ircnet/theLounge/config.js
sed -i "s/thelounge_pass/$thelounge_unreal/g" /home/ircnet/UnrealIRCd/conf/unrealircd.conf

sed -i "s/cloak_1_key/$cloak_1_unreal/g" /home/ircnet/UnrealIRCd/conf/unrealircd.conf
sed -i "s/cloak_2_key/$cloak_1_unreal/g" /home/ircnet/UnrealIRCd/conf/unrealircd.conf
sed -i "s/cloak_3_key/$cloak_1_unreal/g" /home/ircnet/UnrealIRCd/conf/unrealircd.conf