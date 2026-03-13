# Databricks Analytics Platform on AWS

Author: Emerson Maciel, Cloud Architect | AWS

---

## Overview

This project demonstrates a modern analytics platform architecture using Databricks on AWS.

It is designed to teach how data engineering teams build cloud-native analytics foundations with:

- object storage
- medallion architecture
- notebooks
- infrastructure as code
- data pipelines

---

## Architecture Components

### Storage Layer

- Amazon S3
- Bronze / Silver / Gold zones

### Processing Layer

- Databricks Workspace
- Databricks Cluster
- Spark notebooks

### Governance and Access

- IAM roles
- workspace access controls

### Consumption Layer

- curated datasets
- analytics-ready tables
- BI integration

---

## Data Flow

1. raw files are landed in Amazon S3 Bronze
2. notebooks clean and standardize into Silver
3. business-ready aggregations are produced in Gold
4. curated data is consumed by analysts and applications

---

## Learning Goals

This project teaches:

- basic Databricks provisioning
- medallion data architecture
- notebook-driven transformations
- pipeline layering
- cloud data platform design

---
