#!/usr/bin/env/ bash
echo "build docker image to test application"
docker build -t golang-test -f Dockerfile.dev .
echo "test the application via docker image"
docker run --rm -i golang-test go test hello_world.go
echo "test passed :)))"