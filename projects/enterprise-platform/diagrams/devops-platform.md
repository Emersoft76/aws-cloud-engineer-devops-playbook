# Enterprise DevOps Platform Architecture

```mermaid
flowchart LR

Developers --> GitHub

GitHub --> CICD

CICD --> Terraform

Terraform --> AWS

AWS --> EKS
AWS --> ECS

Applications --> Monitoring

Monitoring --> CloudWatch
Monitoring --> Grafana
```
