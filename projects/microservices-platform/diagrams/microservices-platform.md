# Microservices Platform Architecture

```mermaid
flowchart LR

Users --> Ingress

Ingress --> ServiceA
Ingress --> ServiceB

ServiceA --> Database
ServiceB --> Database

CI --> DockerBuild
DockerBuild --> ContainerRegistry

ContainerRegistry --> Kubernetes
```
