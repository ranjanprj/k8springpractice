#!/bin/bash
rm -r *
wget -O Dockerfile "http://$ipaddr:8000/$appname/k8s/Dockerfile"
wget -O app.jar "http://$ipaddr:8000/$appname/target/$appname-1.0-SNAPSHOT.jar"
docker build -t $appname .