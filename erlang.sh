#!/usr/bin/env bash

# get erlang apt source
echo "deb http://binaries.erlang-solutions.com/debian precise contrib" >> /etc/apt/sources.list
wget -O - http://binaries.erlang-solutions.com/debian/erlang_solutions.asc | apt-key add -

# install erlang
apt-get update
apt-get -y install esl-erlang

# install elixir
cd /usr/local/src
git clone https://github.com/elixir-lang/elixir.git
cd elixir
make
make install