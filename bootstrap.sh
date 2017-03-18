#!/usr/bin/env bash
apt-get update
apt-get upgrade
apt-get install -y build-essential openssl libxml2-dev libncurses5-dev uuid-dev sqlite3 libsqlite3-dev pkg-config libjansson-dev
cd /tmp/ && wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-13.14.0.tar.gz
tar xvf asterisk-13.14.0.tar.gz && cd asterisk-13.14.0
./configure
make
make install
make samples
make config # Asterisk as a Service
service asterisk start