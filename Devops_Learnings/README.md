# 🚀 DevOps Learnings — Hands-on Notes & Mini Demos

This repository documents my **daily revision + hands-on practice** across core DevOps topics:
**Docker, Kubernetes, Terraform, CI/CD, Ansible, AWS, Linux/Shell, Observability, Git/GitHub**.

> Goal: Keep everything **interview-ready** and **proof-of-work** with short posts, tiny demos, and practical configs.

---

## 📚 Repository Map

Each top-level folder contains short, focused “Post-XX_*” subfolders with a `README.md` and (where relevant) runnable code.
```
AWS/ # Cloud primitives & guardrails
Ansible/ # Agentless automation & infra tasks
CI_CD/ # Pipelines, GH Actions, Jenkins basics
Docker/ # Images, layers, volumes, networks
Git_GitHub/ # (incoming) Branching, PRs, hooks, tips
Kubernetes/ # Pods, Services, architecture, basics
Linux-Shell_Scripting/# (incoming) Daily shell utilities & scripts
Observability/ # (incoming) Prometheus, Grafana, OTel notes
Terraform/ # State, plan/apply, variables, outputs
```


➡️ See **Topic Index** below for quick links.

---

## 🧭 How to Use

- **Browse by topic** → Open a `Post-XX_*` folder and read its `README.md`.
- **Run small demos** (when provided):
  - Docker:
    ```bash
    docker build -t demo:local .
    docker run --rm demo:local
    ```
  - Kubernetes:
    ```bash
    kubectl apply -f manifest.yaml
    kubectl get pods -o wide
    ```
  - Terraform:
    ```bash
    terraform init && terraform plan && terraform apply
    ```
  - GitHub Actions:
    - Check `.yml` under `CI_CD/Post-04_GitHub-Actions-Basics/ci.yaml`.

> ⚠️ Cloud resources: Use your own account & **destroy** after tests.

---

## 🗂 Topic Index

- **AWS**
  - [Post-01: Account Setup Disaster Lessons](AWS/Post-01_AWS-Account-Setup-Disaster/README.md)
  - [Post-02: IAM Permission Hierarchy](AWS/Post-02_IAM-Permission-Hierarchy/README.md)
  - [Post-03: S3 Best Practices](AWS/Post-03_S3-Bucket-Setup-BestPractices/README.md)
  - [Post-04: VPC Best Practices](AWS/Post-04_VPC-Setup-BestPractices/README.md)
  - [Post-05: EC2 Best Practices](AWS/Post-05_EC2-Setup-BestPractices/README.md)

- **Ansible**
  - [Post-01: Agentless vs SSH](Ansible/Post-01_Agentless-vs-SSH/README.md)
  - [Post-02: Playbook vs Ad-hoc](Ansible/Post-02_Playbook-vs-Adhoc/README.md)
  - [Post-03: Idempotency](Ansible/Post-03_Idempotency/README.md)
  - [Post-04: Ansible vs Chef vs Puppet](Ansible/Post-04_Ansible-vs-Chef-vs-Puppet/README.md)
  - [Post-05: Ansible + Docker + K8s](Ansible/Post-05_Ansible-Docker-K8s-Integration/README.md)

- **CI/CD**
  - [Post-01: CI vs CD](CI_CD/Post-01_CI-vs-CD-Diff/README.md)
  - [Post-02: Pipeline Stages](CI_CD/Post-02_Pipeline-Stages-Explained/README.md)
  - [Post-03: Jenkins vs GitHub Actions](CI_CD/Post-03_Jenkins-vs-GitHubActions/README.md)
  - [Post-04: GitHub Actions Basics (+ `ci.yaml`)](CI_CD/Post-04_GitHub-Actions-Basics/README.md)
  - [Post-05: Docker in CI/CD](CI_CD/Post-05_Docker-in-CICD/README.md)

- **Docker**
  - [Post-01: Layer Optimization (+ `Dockerfile`)](Docker/Post-01_Dockerfile-Layer-Optimization/README.md)
  - [Post-02: Volumes vs Bind Mounts](Docker/Post-02_Volumes-vs-Bind-Mounts/README.md)
  - [Post-03: Why Volumes Matter](Docker/Post-03_Docker-Volumes-Are-Essentials/README.md)
  - [Post-04: Multi-Stage Builds](Docker/Post-04_Docker-Multi-Stage-Builds/README.md)
  - [Post-05: Networks & Protocols (+ `docker-compose.yml`)](Docker/Post-05_Docker-Networks-Communication-Protocols/README.md)

- **Kubernetes**
  - [Post-01: Docker vs K8s (Analogy)](Kubernetes/Post-01_Docker-vs-Kubernetes-Analogy/README.md)
  - [Post-02: K8s Architecture (+ basic pod)](Kubernetes/Post-02_Kubernetes-Architecture/README.md)
  - [Post-03: Pod vs Container (+ manifest)](Kubernetes/Post-03_Pod-vs-Container/README.md)
  - [Post-04: `kubectl create` vs `apply`](Kubernetes/Post-04_Apply-vs-Create/README.md)
  - [Post-05: Why Services (+ pod & service yaml)](Kubernetes/Post-05_Why-Services-Are-Needed/README.md)

- **Terraform**
  - [Post-01: State = Infra Memory](Terraform/Post-01_Terraform-State-Memory/README.md)
  - [Post-02: Plan vs Apply](Terraform/Post-02_Terraform-Plan-vs-Apply/README.md)
  - [Post-03: Providers = Contractors](Terraform/Post-03_Terraform-Providers-Contractors/README.md)
  - [Post-04: Variables = Custom Blueprints](Terraform/Post-04_Terraform-Variables-CustomBlueprints/README.md)
  - [Post-05: Outputs = Handover Package](Terraform/Post-05_Terraform-Outputs-HandoverPackage/README.md)

> **Coming Soon:**  
> `Git_GitHub/`, `Linux-Shell_Scripting/`, `Observability/` — will add posts & runnable examples.

---

## 🧪 Local/Cloud Safety

- Use throwaway accounts/tenants for tests.
- For Terraform: prefer remote state (S3 + DynamoDB) and **tag resources**.
- Always clean up:
  ```bash
  terraform destroy
  kubectl delete -f manifest.yaml
  docker compose down --volumes
  ```
---

## 🔗 Connect

- Twitter/X: https://x.com/XT1396
- LinkedIn: https://www.linkedin.com/in/shubhadeep-bhowmik-74b5a214b/


