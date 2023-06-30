#!/bin/bash
rm Dockerfile
rm m2-1.0-SNAPSHOT.jar
wget http://$ipaddr:8000/m2/k8s/Dockerfile
wget http://$ipaddr:8000/m2/target/m2-1.0-SNAPSHOT.jar
docker build -t m2 .
# docker kill mytest
# docker rm mytest
# docker run --name mytest -t m2:latest -p 8888:8888 
# minikube image load m2:latest