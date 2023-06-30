#!/bin/bash
rm -r *
wget -O "Dockerfile http://$ipaddr:8000/mf/k8s/Dockerfile"
wget -O app.jar "http://$ipaddr:8000/mf/target/app.jar"
echo "BUILDING IMAGE"
docker build -t $appname .