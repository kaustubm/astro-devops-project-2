# CI/CD Pipeline Architecture

```mermaid
flowchart LR
    A[Developer Push] -->|Git Push| B[GitHub Repository]
    B -->|Trigger| C[GitHub Actions]
    subgraph workflow [CI/CD Pipeline on EC2]
        C -->|1. Code Analysis| D[SonarQube Scan]
        D -->|2. Build| E[Docker Image Build]
        E -->|3. Security Scan| F[Trivy Scanner]
        F -->|4. Push| G[DockerHub Registry]
        G -->|5. Deploy| H[AWS EKS Cluster]
    end

    I[Terraform Code] -->|Provision| J[AWS Resources]
    J -->|Store State| K[(AWS S3 Bucket)]

    workflow -->|Status Updates| L[Slack Notifications]
```
