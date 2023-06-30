@REM https://brain2life.hashnode.dev/grafana-loki-setup-in-minikube
@REM Add loki as data source with url http://loki-stack:3100, select loki from explore tab

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install loki-stack grafana/loki-stack --values loki-stack-values.yaml -n loki --create-namespace

kubectl -n loki get secret loki-stack-grafana -o yaml
kubectl -n loki port-forward svc/loki-stack-grafana 3000:80
minikube -n loki service loki-stack-grafana

