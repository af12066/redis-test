#!/usr/bin/sh

wget http://download.redis.io/releases/redis-3.2.4.tar.gz
tar xvzf redis-3.2.4.tar.gz
cd redis-3.2.4
make && make test && sudo make install
