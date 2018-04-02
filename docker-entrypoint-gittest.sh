#!/bin/bash
#set -e
#
#if [ "${1:0:1}" = '-' ]; then
#	set -- speedtest-cli "$@"
#fi
#
#exec "$@"

#export http_proxy=http://10.50.8.52:8080
#export https_proxy=http://10.50.8.52:8080

cd ~
whoami
git clone https://github.com/gshipley/openshift3mlbparks mlbparks
cd mlbparks/
mvn clean package
