#!/bin/bash
rm Dockerfile
rm microsvcfront-1.0-SNAPSHOT.jar
wget http://192.168.1.7:8000/microsvcfront/k8s/Dockerfile
wget http://192.168.1.7:8000/microsvcfront/target/microsvcfront-1.0-SNAPSHOT.jar
docker build -t microsvcfront .
# docker kill mytest
# docker rm mytest
# docker run --name mytest -t microsvcfront:latest -p 8888:8888 
# minikube image load microsvcfront:latest