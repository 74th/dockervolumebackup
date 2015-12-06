FROM busybox:latest
MAINTAINER 74th<site@j74th.com>

ADD ./backup.sh /root/ 
WORKDIR /target
VOLUME /target
VOLUME /export
ENV NAME backup

ENTRYPOINT /bin/sh /root/backup.sh