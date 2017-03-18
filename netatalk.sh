#!/bin/sh

wget https://sourceforge.net/projects/netatalk/files/netatalk/3.1.11/netatalk-3.1.11.tar.bz2

apt-get install autoconf libtool automake build-essential libssl-dev libgcrypt11-dev libkrb5-dev libpam0g-dev libwrap0-dev libdb-dev libmysqlclient-dev libavahi-client-dev libacl1-dev libldap2-dev libcrack2-dev systemtap-sdt-dev libdbus-1-dev libdbus-glib-1-dev libglib2.0-dev tracker libtracker-miner-1.0-dev libtracker-sparql-1.0-dev libevent-dev

./configure \
  --with-init-style=debian-sysv \
  --without-libevent \
  --with-cracklib \
  --enable-krbV-uam \
  --with-pam-confdir=/etc/pam.d \
  --with-dbus-sysconf-dir=/etc/dbus-1/system.d \
  --with-tracker-pkgconfig-version=1.0

make

