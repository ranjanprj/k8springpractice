#!/bin/bash
rm Dockerfile
rm microsvctwo-1.0-SNAPSHOT.jar
wget http://192.168.1.7:8000/microsvctwo/k8s/Dockerfile
wget http://192.168.1.7:8000/microsvctwo/target/microsvctwo-1.0-SNAPSHOT.jar
docker build -t microsvctwo .
# docker kill mytest
# docker rm mytest
# docker run --name mytest -t microsvctwo:latest -p 8888:8888 
# minikube image load microsvctwo:latest