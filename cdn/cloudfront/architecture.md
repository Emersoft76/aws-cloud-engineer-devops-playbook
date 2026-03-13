# CloudFront Global Delivery Architecture

Author: Emerson Maciel, Cloud Architect | AWS

---

## Overview

This project demonstrates how to design a global content delivery architecture using Amazon CloudFront.

CloudFront improves:

- performance
- scalability
- security
- global distribution

---

## Architecture Components

### Edge Layer

Amazon CloudFront

### Origin Layer

Application Load Balancer  
Amazon S3  

### Security Layer

AWS WAF  
AWS Shield

---

## Request Flow

User Request
↓
CloudFront Edge Location
↓
WAF inspection
↓
Cache lookup
↓
Origin request if needed
↓
Response delivered globally

---

## Key Benefits

- low latency
- edge caching
- DDoS protection
- TLS termination
- global edge network

---
