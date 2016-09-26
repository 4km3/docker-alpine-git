FROM        alpine:3.4
MAINTAINER  pancho horrillo <pancho@pancho.name>

LABEL Description="git client"   \
      Vendor="ACME Products"     \
      Version="1.0"

COPY entrypoint /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]

RUN	set -ex;										\
	echo @testing http://nl.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories;	\
	apk add --no-cache gosu@testing git
