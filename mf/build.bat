@echo off

FOR /F "tokens=4 delims= " %%i in ('route print ^| find " 0.0.0.0"') do set localIp=%%i

echo Your IP Address is: %localIp%

for %%I in (.) do set CurrDirName=%%~nxI
echo %CurrDirName%

set PATH=%PATH%;C:\3Projects\k8springpractice;

cd k8s
sed  s/appname/%CurrDirName%/g d.template > deployment.yaml
sed  s/appname/%CurrDirName%/g s.template > service.yaml
cd ..


mvn clean install && minikube ssh "export ipaddr=%localIp% && export appname=%CurrDirName% && rm -f build.sh && wget -O build.sh "http://$ipaddr:8000/mf/k8s/build.sh" && sh build.sh" && kubectl apply -f k8s/ && kubectl delete -f k8s/ && kubectl apply -f k8s/