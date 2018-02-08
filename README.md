This repo contains a Dockerfile for deploying (https://miniflux.net)[Miniflux] to (https://github.com/dokku/dokku)[Dokku].

Follow the usual Dokku deployment instructions, creating an app on your Dokku
instance then pushing this repo to the remote. You will then need to bind the port using 
`dokku proxy:ports-add <appname> http:80:8080`. Then create and link the postgres database and run the migration and user setup.


