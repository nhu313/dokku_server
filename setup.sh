dokku apps:create qa
dokku config:set qa BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
dokku config:set qa LC_ALL=en_US.utf8
sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git
dokku postgres:create qa_test
dokku postgres:link qa_test qa


dokku apps:create prod
dokku config:set prod BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi.git
dokku config:set prod LC_ALL=en_US.utf8
sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git
dokku postgres:create mp_prod
dokku postgres:link mp_prod prod
