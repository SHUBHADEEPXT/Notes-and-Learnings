# 🚀 Ansible Day 5 – Ansible + Docker/K8s Integration

> Ansible isn’t just for VMs and bare-metal servers. 
> It also integrates with **Docker** and **Kubernetes** for modern workflows. 

---

## 🐳 Managing Docker with Ansible

Ansible has dedicated Docker modules like `docker_container`.

### Example: Start an Nginx Container
```yaml
- name: Deploy app container
  hosts: localhost
  tasks:
    - name: Start nginx container
      docker_container:
        name: webapp
        image: nginx:latest
        ports: "80:80"
        state: started
```

🔹 Run:
```
ansible-playbook docker-container.yml
```

---

## ☸️ Managing Kubernetes with Ansible

Ansible’s k8s module allows direct Kubernetes object management.

### Example: Deploy a simple K8s app
```
- name: Deploy to Kubernetes
  hosts: localhost
  tasks:
    - name: Apply a Deployment
      k8s:
        definition:
          apiVersion: apps/v1
          kind: Deployment
          metadata:
            name: nginx-deploy
          spec:
            replicas: 2
            selector:
              matchLabels:
                app: nginx
            template:
              metadata:
                labels:
                  app: nginx
              spec:
                containers:
                - name: nginx
                  image: nginx:latest
                  ports:
                  - containerPort: 80
```

🔹 Run:
```
ansible-playbook k8s-deploy.yml
```

---

## 🔑 Why This Matters

- Single automation tool for infra + containers
- Consistent playbooks across VMs and clusters
- Simplifies hybrid workloads (VMs + Docker + K8s)

---

## 🧠 TL;DR

- Use docker_container for Docker automation
- Use k8s module for Kubernetes
- Ansible unifies VM + Container automation in one language

---

## 🧵 Related Twitter Post

🔗 View Twitter Post - [ https://x.com/XT1396/status/1959260714293465320 ]
