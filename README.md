# openfaas-grafana
Grafana with provisioning
build image
```sh
docker build -t twopm/faas-grafana:latest .
```
push image

```sh
docker push push twopm/faas-grafana:latest
```

Run Grafan in OpenFaaS Kubernetes namespace:

```sh
kubectl -n openfaas run \
--image=twopm/faas-grafana:latest \
--port=3000 \
grafana
```

Forward port from localhost to grafana

```sh
kubectl port-forward pod/grafana 3000:3000 -n openfaas
```

URL: `http://localhost:3000/`
Credentials: `admin/admin`
