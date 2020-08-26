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
PURPLE_FREAK_DOCKERFILE_NAME=docker/Dockerfile.dev

PURPLE_FREAK_FRONT_CONTEXT_PATH=./purple-freak/client
PURPLE_FREAK_FRONT_DOCKERFILE_NAME=docker/Dockerfile.dev" >> .env

printMessasage "Docker context and file name appended to .env"

printMessasage "Build back"
docker-compose build purple-freak

printMessasage "Build front"
docker-compose build purple-freak-front

printMessasage "Create, migrate and seed database"
docker-compose run --rm purple-freak bin/rails db:{create,migrate,seed}

printMessasage "Use this command into quero boot to start your app: ${NC}docker-compose up purple-freak purple-freak-front"
printMessasage "All done!"
