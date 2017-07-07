FROM tim03/openssl
LABEL MAINTAINER Chen, Wenli <chenwenli@chenwenli.com>

WORKDIR /usr/src
COPY make-ca.sh-20170119 .
ADD http://anduin.linuxfromscratch.org/BLFS/other/certdata.txt .
RUN install -vm755 make-ca.sh-20170119 /usr/sbin/make-ca.sh
RUN /usr/sbin/make-ca.sh 

