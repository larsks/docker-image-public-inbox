FROM debian:buster

ARG PI_RELEASE=master

RUN apt-get update; apt -y install \
	build-essential \
	git \
	libcrypt-cbc-perl \
	libdbd-sqlite3-perl \
	libdbi-perl \
	libemail-address-xs-perl \
	libemail-mime-perl \
	libhighlight-perl \
	libinline-c-perl \
	liblinux-inotify2-perl \
	libnet-server-perl \
	libperl5.28 \
	libplack-middleware-reverseproxy-perl \
	libplack-perl \
	libsearch-xapian-perl \
	libsocket6-perl \
	libtimedate-perl \
	liburi-perl \
	libxml-treepp-perl \
	perl \
	perl-modules-5.28 \
	perl-modules \
	xapian-tools

COPY build.sh /root/build.sh
RUN sh /root/build.sh
