# Infraestrutura como Código (Infrastructure as Code)

Infraestrutura como Código (IaC) é uma prática que permite provisionar e gerenciar infraestrutura utilizando código.

Essa abordagem substitui processos manuais por automação.

---

## Benefícios

- automação da infraestrutura
- consistência entre ambientes
- versionamento no Git
- facilidade de replicação

---

## Ferramentas Utilizadas

### Terraform

Ferramenta declarativa utilizada para provisionar recursos em cloud.

Exemplo de recursos:

- VPC
- clusters Kubernetes
- bancos de dados
- redes

Site oficial:

https://developer.hashicorp.com/terraform

---

### Terragrunt

Ferramenta que melhora o gerenciamento de múltiplos ambientes Terraform.

Permite organizar:

- dev
- staging
- production

Site oficial:

https://terragrunt.gruntwork.io

---

## Fluxo de trabalho IaC

1. escrever código Terraform
2. executar `terraform init`
3. executar `terraform plan`
4. executar `terraform apply`

---

## Infraestrutura gerenciada no repositório

Este repositório demonstra provisionamento de:

- VPC
- EKS
- ECS
- CloudFront
- IAM

---
