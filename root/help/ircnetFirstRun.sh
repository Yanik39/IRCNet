#!/bin/bash

/bin/mkdir -p /home/ircnet/theLounge/users

hashPassword=$(/usr/bin/mkpasswd -m bcrypt -s $theLounge_PASSWORD)

/bin/cat >/home/ircnet/theLounge/users/$theLounge_USER.json <<-EOF
{
        "password": "$hashPassword",
        "log": true
}
EOF

#/bin/sed -i 's/oper_user_replace/$theLounge_OPER_USER/g' /home/ircnet/UnrealIRCd/conf/unrealircd.conf
#/bin/sed -i 's/oper_pass_replace/$theLounge_OPER_PASSWORD/g' /home/ircnet/UnrealIRCd/conf/unrealircd.conf
#/bin/sed -i 's/oper_port_replace/$theLounge_PORT/g' /home/ircnet/UnrealIRCd/conf/unrealircd.conf

## atheme thelounge unrealircd link passwords and cloak keys
