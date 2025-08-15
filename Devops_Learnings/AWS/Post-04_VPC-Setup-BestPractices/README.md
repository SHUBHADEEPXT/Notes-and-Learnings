# 🏘️ AWS VPC – Your Cloud Neighborhood

A **Virtual Private Cloud (VPC)** is your private, isolated network in AWS.
Think of it as **your gated neighborhood** — you control who lives there, how they connect, and what security exists.

---

## 📚 Core Concepts
| AWS Concept      | Real-Life Analogy       |
|------------------|-------------------------|
| VPC              | Neighborhood/Colony     |
| Subnet           | Streets in the colony   |
| Security Group   | House gates (firewall)  |
| NACL (Network ACL) | Street barriers/checkposts |
| Internet Gateway | Main entrance gate      |
| Route Table      | Road map for traffic    |

---

## 🛠 Step-by-Step: Create a VPC

### **1) Using AWS Console**
1. Open **VPC Dashboard**
2. Click **Create VPC**
3. Choose **VPC only** (or VPC + subnets if using wizard)
4. Provide a **CIDR block** (e.g., `10.0.0.0/16`)
5. Add subnets:
   - Public: For internet-facing resources
   - Private: For internal resources only
6. Attach an **Internet Gateway** for public access
7. Create **Route Tables** and associate with subnets

---

### **2) Using AWS CLI**
```bash
# Create VPC
aws ec2 create-vpc \
    --cidr-block 10.0.0.0/16 \
    --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=devops-vpc}]'

# Create subnet
aws ec2 create-subnet \
    --vpc-id vpc-12345678 \
    --cidr-block 10.0.1.0/24 \
    --availability-zone ap-south-1a

# Create and attach internet gateway
aws ec2 create-internet-gateway
aws ec2 attach-internet-gateway \
    --internet-gateway-id igw-12345678 \
    --vpc-id vpc-12345678
```

---

##🔒 Security Best Practices

- Keep public and private subnets separate
- Security Groups = allow only required ports (e.g., 22, 80, 443)
- NACLs = extra layer for subnet-level control
- Enable VPC Flow Logs to monitor traffic

---

## 📉 Real-World Lesson

I once launched a DB in a public subnet by mistake → fully exposed to internet.
Fixed it by moving to private subnet + SG restricting to app server only.

---

## 📌 Summary

- VPC = Your AWS private network
- Subnets = Logical separation of resources
- SGs & NACLs = Layered security
- IGWs & Route Tables = Traffic control

---

## 🔗 Related Links

AWS VPC Docs: [https://docs.aws.amazon.com/vpc/]
AWS CLI VPC Reference: [https://docs.aws.amazon.com/cli/latest/reference/ec2/]

🔗 Twitter Post: [https://x.com/XT1396/status/1956340913372086436]
