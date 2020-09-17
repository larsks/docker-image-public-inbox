#!/bin/sh

set -e

cd /tmp
git clone -b ${PI_RELEASE:-master} https://public-inbox.org/public-inbox.git/
cd public-inbox

perl Makefile.PL
make
make install
