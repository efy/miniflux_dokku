This repo contains a Dockerfile for deploying [Miniflux](https://miniflux.net)to [Dokku](https://github.com/dokku/dokku).

Follow the usual Dokku deployment instructions, creating an app on your Dokku
instance and pushing this repo to the remote. You will then need to bind the ports, create and link the database and run the
setup:

1. `dokku proxy:ports-add <appname> http:80:8080`
2. `dokku postgres:create <dbname>`
3. `dokku postgres:link <appname> <dbname>`
4. `dokku run <appname> /usr/local/bin/miniflux -migrate`
5. `dokku run <appname> /usr/local/bin/miniflux -create-admin`


