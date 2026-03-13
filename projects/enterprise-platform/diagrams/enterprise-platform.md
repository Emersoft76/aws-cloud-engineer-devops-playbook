# Enterprise Platform Architecture

```mermaid
flowchart LR

Developers --> GitHub

GitHub --> CICD

CICD --> Terraform

Terraform --> AWS

AWS --> VPC
AWS --> EKS
AWS --> ECS

Applications --> Monitoring

Monitoring --> CloudWatch
Monitoring --> Grafana
Monitoring --> Datadog

Users --> CloudFront
CloudFront --> Applications
```
