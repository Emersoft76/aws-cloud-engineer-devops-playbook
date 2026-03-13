# Microservices Platform Deployment

---

## Build containers

cd containers/docker/sample-microservice

docker build -t emersoft76/sample-microservice .

---

## Deploy Kubernetes manifests

kubectl apply -f containers/kubernetes/deployments

kubectl apply -f containers/kubernetes/services

kubectl apply -f containers/kubernetes/ingress

---
