#!/usr/bin/env bash
APP_NAME=`hostname`
cd /home
pkill -f unicorn
rm -rf rails
apt-get -y update && apt-get -y install git siege
echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
git clone git@github.com:1337807/rainbow.git rails
mkdir /home/rails/tmp/pids
chown rails:rails rails
chown -R rails:www-data rails/*
cd /home/rails
bundle install
RAILS_ENV=production rake db:setup
perl -pi -e "s/Ichi/$APP_NAME/g" config/newrelic.yml
gem install god --no-rdoc --no-ri
cd && god -c /home/rails/config/rainbow.god
