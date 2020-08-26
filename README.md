# README

## Dependencies
- PostgreSQL >= 11
- Ruby >= 2.6


## Setup
#### Via quero boot

- Add this repo into quero boot folder
- Run `./docker/setup_quero_boot.sh`
- Into quero boot app run `docker-compose up purple-freak purple-freak-front`
- Visit app:
  - [API](http://localhost:3000)
  - [Front](http://localhost:8080)

#### Non quero boot
```bash
# Install postgres: Visit https://www.postgresql.org/download/ to
# check how to download and install into your system

# Install ruby with rvm (you can use your favorite manager like asdf or rbenv)
$ `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

# Install ruby dependencies
$ bundle install

# Setup your custom database environment variables
# This is default values, you can skip this step if you dont need to change
# Remember to adds this variables to your terminal source to be available into all sessions
DB_NAME=teste
DB_HOST=localhost
DB_USER=teste
DB_PASSWORD=teste

#  Create, migrate and seed your database
$ bin/rails db:{create,migrate:seed}

# Start your app
$ bin/rails s

# Visit app on http://localhost:3000
```
