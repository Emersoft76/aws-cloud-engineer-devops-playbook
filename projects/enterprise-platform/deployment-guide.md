# Enterprise Platform Deployment

---

## Step 1

Provision infrastructure.

cd iac/terraform/environments/dev

terraform init  
terraform apply

---

## Step 2

Deploy Kubernetes services.

kubectl apply -f containers/kubernetes/deployments/

---

## Step 3

Deploy monitoring stack.

cd observability/cloudwatch

terraform apply

---
