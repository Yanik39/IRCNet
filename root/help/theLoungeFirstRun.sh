#!/bin/bash

/bin/mkdir -p /home/ircnet/theLounge/users

hashPassword=$(/usr/bin/mkpasswd -m bcrypt -s $theLounge_PASSWORD)

/bin/cat >/home/ircnet/theLounge/users/$theLounge_USER.json <<-EOF
{
        "password": "$hashPassword",
        "log": true
}
EOF
