#!/usr/bin/env/ bash
echo "login into private registry"
docker login -u ramin -p password http://172.17.6.76:5000
echo "should push docker image to private registry"
docker push 172.17.6.76:5000/test/golang-test
echo "cleanup image"
docker rmi -f 172.17.6.76:5000/test/golang-test