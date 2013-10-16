#!/usr/bin/env bash
LICENSE_KEY=`cat /home/rails/config/newrelic.yml | grep license_key | awk '{print $2}' | tr -d "'"`
echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list
wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -
apt-get update
apt-get install newrelic-sysmond
nrsysmond-config --set license_key=$LICENSE_KEY
/etc/init.d/newrelic-sysmond start
