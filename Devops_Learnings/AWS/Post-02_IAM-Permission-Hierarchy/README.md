# 🔐 AWS IAM – Permission Hell Solved

If you're tired of **“Access Denied”** errors in AWS — you're not alone.

IAM (Identity and Access Management) is one of the most powerful AND confusing parts of AWS.

Here’s how I simplified it in my real-world journey 👇

---

## 📚 IAM Structure – Hierarchy Overview

### 🏢 Organization Level:
- **Organization** → Root of your AWS infra
- **Accounts** → Separate billing + resource boundaries
- **OUs (Organizational Units)** → Logical groups for policy application

### 👤 IAM (Account) Level:
| Component | Purpose |
|----------|---------|
| **Users** | Real people (e.g., you, team) |
| **Groups** | Bundle of users (e.g., Devs, Admins) |
| **Roles** | Temporary credentials (services, EC2, cross-account) |
| **Policies** | JSON documents defining access rules |

---

## 🧠 Golden Rules for IAM Setup

✅ Use **Groups** for real users  
✅ Use **Roles** for services (e.g., EC2 to access S3)  
✅ **Never** attach policies directly to users  
✅ Prefer **AWS Managed Policies** to start (e.g., `AmazonS3FullAccess`)  
✅ Use **inline policies** only when absolutely needed

---

## 📄 Sample S3 Full Access Policy

{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": "s3:*",
    "Resource": "arn:aws:s3:::my-bucket/*"
  }]
}


- "Action": "s3:*" → All S3 actions (list, get, put)
- "Resource" → Limit access to one bucket

---

## 🔁 IAM Use Case – EC2 to Access S3

- Create an IAM Role with AmazonS3ReadOnlyAccess
- Attach that role to an EC2 instance
- Instance can now access S3 without access keys

🎯 Roles = Credentials rotation + service permissions

---

## 💡 Real-World Tip

💥 I once gave an EC2 IAM Role without defining the right Resource ARN.
Result? EC2 couldn't list buckets.

✅ Always validate:

- Permissions (Actions)
- Resource ARNs
- Conditions (optional filters)

---

## 🛡️ Bonus: SCP vs IAM

| Feature       | SCP (Service Control Policy)  | IAM Policy                   |
|---------------|-------------------------------|------------------------------|
| **Level**     | Organization                  | Account                      |
| **Blocks**    | Max boundaries (guardrails)   | Day-to-day access control    |
| **Use for**   | Preventing unwanted actions   | Granting user/service access |

---

## 🔗 Links

AWS IAM Best Practices - https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html
AWS Policy Generator - https://awspolicygen.s3.amazonaws.com/policygen.html

🔗 Related Twitter Post: [https://x.com/XT1396/status/1951261379585024053]

---

📌 Summary

- IAM is powerful, but misused can be dangerous
- Use roles + groups + policies wisely
- Always start with least privilege and build up
- 🔐 Master IAM = Master AWS Access
