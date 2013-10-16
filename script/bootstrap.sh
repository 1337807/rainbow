#!/usr/bin/env bash
: ${APP_NAME:?"You need to set the APP_NAME environment variable."}
cd /home
rm -rf rails
apt-get -y update && apt-get -y install git siege
echo -e "Host github.com\n\tStrictHostKeyChecking no\n" >> ~/.ssh/config
git clone git@github.com:1337807/rainbow.git rails
chown rails:rails rails
chown -R rails:www-data rails/*
cd /home/rails
bundle install
RAILS_ENV=production rake db:setup
perl -pi -e "s/Ichi/$APP_NAME/g" config/newrelic.yml
pkill -f unicorn
bundle exec unicorn_rails -D -E production -c /home/rails/config/unicorn.rb
siege localhost &
