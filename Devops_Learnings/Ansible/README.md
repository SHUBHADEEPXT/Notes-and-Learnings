# ⚡ Ansible – Configuration Management Simplified

Welcome to my **Ansible learning + analogy series** 🎯  
This repo contains **step-by-step posts, playbooks, and notes** that explain Ansible concepts in a practical, interview-ready format.

Each post corresponds to my **Twitter/X series** (#100DaysOfDevOps) and **LinkedIn analogy articles**, with matching code here in GitHub.  

---

## 🗂️ Posts & Topics

### 🔹 Post 01 – Agentless vs SSH
- Myth: "Ansible needs agents" ❌
- Truth: Ansible is **agentless**, works over SSH/WinRM
- Includes `ping` module test
- 📂 [Post-01_Agentless-vs-SSH](./Post-01_Agentless-vs-SSH)

---

### 🔹 Post 02 – Playbook vs Ad-hoc
- Ad-hoc = Quick fix (`ansible all -m ping`)
- Playbook = Structured recipe (YAML IaC)
- 📂 [Post-02_Playbook-vs-Adhoc](./Post-02_Playbook-vs-Adhoc)

---

### 🔹 Post 03 – Idempotency
- Why playbooks show `changed=0`
- Good vs bad modules (`lineinfile` vs `shell`)
- 📂 [Post-03_Idempotency](./Post-03_Idempotency)

---

### 🔹 Post 04 – Ansible vs Chef vs Puppet
- Language differences (Python vs Ruby vs Puppet DSL)
- Agent vs Agentless
- Comparison table
- 📂 [Post-04_Ansible-vs-Chef-vs-Puppet](./Post-04_Ansible-vs-Chef-vs-Puppet)

---

### 🔹 Post 05 – Ansible + Containers
- Using Ansible to manage Docker
- Using Ansible’s `k8s` module for Kubernetes
- 📂 [Post-05_Ansible-Docker-K8s-Integration](./Post-05_Ansible-Docker-K8s-Integration)

---

### 🔹 Post 06 – Ansible Vault
- Encrypt sensitive data (DB passwords, API keys)
- Commands: `ansible-vault create/edit`
- Integration with HashiCorp Vault
- 📂 Coming soon...

---

### 🔹 Post 07 – Performance & Troubleshooting
- Forks, gather_facts, strategy plugins
- Playbook optimization tips
- 📂 Coming soon...

---

## 🧑‍💻 Why This Repo?

- Beginner → Advanced progression (Day 1 → Day 7)
- Real playbooks & ad-hoc examples
- Analogies & visual explanations (LinkedIn/Twitter)
- Covers **interview questions + hands-on labs**

---

## 🔗 Cross-Platform Links

- 🐦 Twitter Threads: [@shubhadeepxt](https://twitter.com/shubhadeepxt)  
- 💼 LinkedIn Analogies: [LinkedIn Profile](https://linkedin.com/in/shubhadeepxt)  
- 📸 Handwritten Notes: See [`Handwritten_Notes/Ansible_Notes`](../Handwritten_Notes/Ansible_Notes)

---

## 📅 Coming Next

🔜 Vault, optimization & troubleshooting posts will be added soon.  
Stay tuned as I continue documenting Ansible & automation best practices 🚀

---

## 📜 License
All content & notes are original.  
Please do not copy/paste without credit. ✅