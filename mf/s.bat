
cd k8s
sed  s/appname/t/g d.template > deployment.yaml
sed  s/appname//g s.template > service.yaml
cd ..
