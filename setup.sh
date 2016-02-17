dokku apps:create app_name
dokku config:set app_name BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
dokku config:set app_name LC_ALL=en_US.utf8
sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git
dokku postgres:create db_name
dokku postgres:link db_name app_name
