#!/usr/bin/env/ bash
echo "docker build image to create binary file"
docker build -t golang-test -f Dockerfile.build .
docker run --rm golang-test > build.tar.gz
tar xvf build.tar.gz
# build docker minimal image with private registry tag
echo "build binary dor create minimal docker image"
docker build -t 172.17.6.76:5000/test/golang-test -f Dockerfile.build 
echo "cleanup files and build image"
rm -rf build.tar.gz golang-test
docker rmi golang-test