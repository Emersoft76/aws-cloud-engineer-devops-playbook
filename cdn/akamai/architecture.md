# Akamai CDN Architecture

Author: Emerson Maciel, Cloud Architect | AWS

---

## Overview

Akamai is one of the largest content delivery networks in the world.

It provides:

- global edge caching
- advanced security controls
- bot protection
- edge compute

---

## Key Components

### Edge Servers

Akamai edge network

### Origin Infrastructure

AWS Load Balancers  
Application servers

### Security

Akamai Web Application Firewall

---

## Request Flow

Client Request
↓
Akamai Edge Node
↓
Cache lookup
↓
Origin fetch if needed
↓
Content delivered to client

---
