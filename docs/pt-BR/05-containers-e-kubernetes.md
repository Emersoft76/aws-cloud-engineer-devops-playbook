# Containers e Kubernetes

Containers permitem empacotar aplicações e suas dependências em um ambiente isolado.

Isso garante que a aplicação funcione da mesma forma em qualquer ambiente.

---

## Docker

Docker é a plataforma mais utilizada para criar containers.

Site oficial:

https://www.docker.com

Exemplo de uso:

docker build -t minha-app .

docker run -p 8080:8080 minha-app

---

## Kubernetes

Kubernetes é um orquestrador de containers utilizado para executar aplicações em escala.

Site oficial:

https://kubernetes.io

---

## Funcionalidades do Kubernetes

- escalabilidade automática
- auto recuperação de containers
- descoberta de serviços
- balanceamento de carga

---

## Componentes principais

### Pods

Menor unidade executável no Kubernetes.

### Deployments

Gerenciam versões de aplicações.

### Services

Permitem comunicação entre aplicações.

### Ingress

Controla acesso externo às aplicações.

---

## Kubernetes na AWS

Na AWS utilizamos:

- Amazon EKS
- Amazon ECS

---
