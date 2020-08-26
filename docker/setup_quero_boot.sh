#!/bin/bash
set -e

BLUE='\033[0;36m'
NC='\033[0m' # No Color
function printMessasage() {
  echo -e "-> ${BLUE}$1${NC}"
}

cd ..
printMessasage "Entered to quero boot project: ${NC}$(pwd)"

cp envs/purple-freak.env.sample envs/purple-freak.env
printMessasage "Created default env file ${NC}$(pwd)/envs/purple-freak.env"

echo "
PURPLE_FREAK_CONTEXT_PATH=./purple-freak
PURPLE_FREAK_DOCKERFILE_NAME=docker/Dockerfile.dev" >> .env

printMessasage "Docker context and file name appended to .env"

printMessasage "Build image"
docker-compose build purple-freak

printMessasage "Create, migrate and seed database"
docker-compose run --rm purple-freak bin/rails db:{create,migrate,seed}

printMessasage "Use this command into quero boot to start your app: ${NC}docker-compose up purple-freak"
printMessasage "All done!"
