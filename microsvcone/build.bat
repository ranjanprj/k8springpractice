mvn clean install && minikube ssh "rm -f build.sh && wget http://192.168.1.7:8000/microsvcone/k8s/build.sh && sh build.sh" && kubectl delete -f k8s/ && kubectl apply -f k8s/