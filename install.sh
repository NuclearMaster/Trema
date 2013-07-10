#!/bin/bash

# Instalação de softwares e bibliotecas necessários para os testes
apt-get install build-essential git libboost-dev libboost-program-options-dev libboost-thread-dev libboost-filesystem-dev iproute-dev openvswitch-switch mongodb python-pymongo
apt-get install ruby rubygems libcap-dev libsqlite3-dev

# Instalação do RouteFlow
git clone git://github.com/CPqD/RouteFlow.git
cd RouteFlow
make rfclient
cd rftest
./create

# Instalação do Trema
git clone git://github.com/trema/trema.git
cd trema
./build.rb
