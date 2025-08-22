# 🏠 AWS EC2 – Renting Cloud Apartments

EC2 (Elastic Compute Cloud) is the **virtual server service in AWS**. 
Think of it like renting an apartment — you choose the size, setup, and security.

---

## 📚 EC2 Concepts Mapped to Real Life

| AWS Concept     | Real-Life Analogy          |
|-----------------|----------------------------|
| Instance Type   | Apartment size (1BHK, 3BHK)|
| AMI (Image)     | Furnished vs unfurnished   |
| Key Pair        | House key                  |
| Security Group  | Guest list (who can enter) |
| EBS Volume      | Furniture that moves with you |
| Stop/Terminate  | Moving out (retain vs discard furniture) |

---

## 🛠 Step-by-Step: Launch EC2

### **1️⃣Console Method**
1. Go to **EC2 Dashboard → Launch Instance**
2. Choose **AMI** (e.g., Amazon Linux 2)
3. Select **Instance Type** (e.g., `t2.micro` for free tier)
4. Configure **Key Pair** (download `.pem` file)
5. Set **Security Group**:
   - Allow SSH (22) only from your IP
   - Allow HTTP (80)/HTTPS (443) if hosting apps
6. Allocate **Storage (EBS)** — typically 8–30GB
7. Click **Launch**

---

### **2️⃣Using AWS CLI**
```
# Launch EC2 instance
aws ec2 run-instances \
  --image-id ami-12345678 \
  --count 1 \
  --instance-type t2.micro \
  --key-name my-key \
  --security-group-ids sg-12345678 \
  --subnet-id subnet-12345678

# Check status:
aws ec2 describe-instances --instance-ids i-1234567890abcdef0


# SSH into the instance:
ssh -i my-key.pem ec2-user@<EC2-Public-IP>
```
---

## 🔒 Security Best Practices

- Use key pairs for SSH, not passwords
- Restrict SSH to your IP only
- Don’t put DBs in public subnets
- Rotate keys & disable unused users

---

## 💡 Real-World Lesson

I once left an EC2 instance running in us-west-2 for weeks → $100+ bill.
Now I set billing alerts + stop instances daily.

---

## 📌 Summary

- EC2 = AWS cloud apartment
- Choose wisely (size, furnished/unfurnished)
- Secure with keys & guest list
- Always stop/terminate when not in use

---

## 🔗 Related Links
🔗 Twitter Post: [  https://x.com/XT1396/status/1958907349638283675  ]

