FROM		yanik39/ircnet:base

COPY		root/ /

RUN		chown -R ircnet:ircnet /home/ircnet /usr/local/ircnet && \
		chmod +x /IRCNet /help/*.sh

ENTRYPOINT	["/IRCNet"]
