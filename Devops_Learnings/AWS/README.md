# ☁️ AWS Hands-on Learning & Analogies 🚀

This repository documents my **AWS journey** — from account setup to building secure, cost-optimized infrastructure. 
Each concept is explained with **real-world analogies** (defense life, daily routines, anime, etc.) and paired with **hands-on CLI/Console steps**. 

The goal: 
✅ Make AWS human-friendly 
✅ Share DevOps-ready best practices 
✅ Document mistakes & lessons learned 

---

## 📚 Topics Covered (So Far)

### 🔐 Day 1 – AWS Account Setup: The $10K Root Mistake
- Why you should **never use root** for daily work
- MFA, IAM user, billing alerts, and region selection
- [Post-01_AWS-Account-Setup-Disaster](./Post-01_AWS-Account-Setup-Disaster)

### 👥 Day 2 – IAM: Permission Hell Solved
- IAM hierarchy: Users, Groups, Roles, Policies
- Golden rules for access management
- Sample JSON policies
- [Post-02_IAM-Permission-Hierarchy](./Post-02_IAM-Permission-Hierarchy)

### 🪣 Day 3 – S3 Buckets: Lost Luggage Analogy
- Buckets, objects, versioning, lifecycle rules
- Bucket policies & CLI setup
- Real cost-saving lesson with lifecycle management
- [Post-03_S3-Bucket-Setup-BestPractices](./Post-03_S3-Bucket-Setup-BestPractices)

### 🏘️ Day 4 – VPC: Your Cloud Neighborhood
- VPC, subnets, route tables, gateways
- Security groups vs NACLs
- Layered defense strategy with flow logs
- [Post-04_VPC-Setup-BestPractices](./Post-04_VPC-Setup-BestPractices)

### 🏠 Day 5 – EC2: Renting Cloud Apartments
- Instance types, AMIs, key pairs, security groups
- Launching EC2 (console & CLI)
- Cost-saving tips (stop/terminate unused instances)
- [Post-05_EC2-Setup-BestPractices](./Post-05_EC2-Setup-BestPractices)

---

## 🛠️ Repository Structure
.
├── Post-01_AWS-Account-Setup-Disaster
│   └── README.md
├── Post-02_IAM-Permission-Hierarchy
│   └── README.md
├── Post-03_S3-Bucket-Setup-BestPractices
│   └── README.md
├── Post-04_VPC-Setup-BestPractices
│   └── README.md
├── Post-05_EC2-Setup-BestPractices
│   └── README.md
└── README.md (👋 You are hereehere)

---

## 💡 Why This Project?
AWS is powerful but overwhelming at first. 
I used **personal analogies + real mistakes** to simplify concepts while ensuring each lesson is **production-ready**. 

- 🔒 Security-first (Root account, IAM, SGs) 
- 💸 Cost-awareness (Billing alerts, lifecycle rules, stop unused EC2s) 
- 🛠️ Hands-on focus (CLI + Console examples) 

---

## 🧠 Upcoming Topics
- Day 6 → Load Balancers (traffic police analogy) 
- Day 7 → Auto Scaling Groups (army reinforcements analogy) 
- Day 8 → RDS (canteen analogy for managed DB) 
- Day 9 → CloudWatch & Alarms (commentary box analogy) 
- Day 10 → Route 53 (post office analogy for DNS) 

---

## 🔗 Social Links
🧵 Twitter Threads: [ https://x.com/XT1396/status/1948678178551333196 ] 

---

## 📌 Key Lessons
- AWS root account = crown jewels → lock it down 
- IAM is not just users, but groups/roles/policies → design smartly 
- S3 buckets must be tagged, versioned, and lifecycle-managed 
- VPC is your colony → secure the streets (subnets) and gates (SG/NACLs) 
- EC2 = apartment rental → choose size, secure with keys, stop when not needed 

---

## 🏆 My AWS Learning Journey
This repo is part of my **#100DaysOfDevOps** challenge — documenting daily AWS + DevOps practice to stay interview-ready and production-ready. 

🎯 Goal: Build cloud-native, secure, and cost-optimized infra from scratch. 

