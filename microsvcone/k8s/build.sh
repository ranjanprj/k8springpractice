rm Dockerfile
rm microsvcone-1.0-SNAPSHOT.jar
wget http://192.168.1.7:8000/k8s/Dockerfile
wget http://192.168.1.7:8000/target/microsvcone-1.0-SNAPSHOT.jar
docker build -t microsvcone .
docker kill mytest
docker rm mytest
docker run --name mytest -t microsvcone:latest -p 8888:8888 
# minikube image load microsvcone:latest