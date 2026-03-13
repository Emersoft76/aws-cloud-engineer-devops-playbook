# Data Platform Architecture

```mermaid
flowchart LR

DataSources --> Bronze

Bronze --> Silver

Silver --> Gold

Gold --> Analytics

Analytics --> BI
```
