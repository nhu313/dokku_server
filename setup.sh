dokku apps:create qa
dokku config:set qa BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
dokku config:set qa LC_ALL=en_US.utf8
sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git
dokku postgres:create qa_test
