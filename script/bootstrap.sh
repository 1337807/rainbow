: ${APP_NAME:?"You need to set the APP_NAME environment variable."}
cd /home
rm -rf rails
apt-get update && apt-get install git siege
git clone git@github.com:1337807/rainbow.git rails
chown rails:rails rails
chown -R rails:www-data rails/*
cd rails/
bundle
RAILS_ENV=production rake db:setup
perl -pi -e "s/Ichi/$APP_NAME/g" config/newrelic.yml
pkill -f unicorn
bundle exec unicorn_rails -D -E production -c /home/rails/config/unicorn.rb
siege localhost &
