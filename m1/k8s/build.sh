#!/bin/bash
rm -r *Dockerfile*
rm -r *.jar*
rm -r 'Dockerfile'$'\r'
wget http://$ipaddr:8000/m1/k8s/Dockerfile
wget http://$ipaddr:8000/m1/target/m1-1.0-SNAPSHOT.jar
docker build -t m1 .
# docker kill mytest
# docker rm mytest
# docker run --name mytest -t m1:latest -p 8888:8888 
# minikube image load m1:latest