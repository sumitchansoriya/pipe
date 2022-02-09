#!/bin/bash

# Copying new jar to the build location
cp -f target/*.jar .

echo "*********************************"
echo "******BUILDING DOCKER IMAGE******"
echo "*********************************"

docker-compose -f docker-compose-image-build.yml build --no-cache
