# ☁️ AWS Account Setup – The $10K Root Mistake

95% of new AWS users make these **critical security & cost mistakes** on Day 1.
I nearly did too — and a friend *actually* got billed $8,000+ for idle resources in unused regions. Here's how you can avoid that disaster. 👇

---

## 🚨 Common AWS Setup Mistakes

❌ Using the **root account** for all activities
❌ No **MFA** (Multi-Factor Authentication) on root
❌ No **billing alerts** set
❌ All regions enabled — accidental EC2s in 6+ regions
❌ Not using **IAM roles/users** for access

---

## ✅ Correct AWS Account Setup (Step-by-Step)

### 1) Enable MFA on Root Account
**NEVER use root for daily operations.**

🔐 Login to [AWS Console](https://console.aws.amazon.com)

	Go to: `IAM > Users > Security Credentials`

	- Choose **Virtual MFA** (use Google Authenticator or Authy)
	- Save backup codes in a password manager

	- 📌 Root is only for:
		> - Billing updates
		> - Account closure
		> - MFA reset

---

### 2) Create an IAM Admin User
**📜 Create your own named IAM user with admin privileges.**

# Login via root → IAM
# Create Group

aws iam create-group --group-name AdminGroup

# Attach admin policy to group
aws iam attach-group-policy \
  --group-name AdminGroup \
  --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

# Create IAM user (GUI preferred for console access)
aws iam create-user --user-name devops-user

#Enable Console access and generate access keys (store safely).

---

### 3) Set Up Billing Alerts & Budgets
**Go to: Billing > Budgets**

💰 Recommended thresholds:
	₹500 (dev alert)
	₹1000 (warning)
	₹1500 (STOP work + destroy resources)

**Enable SNS notifications linked to your email.**

---

### 4) Restrict AWS Regions

- You can disable unused AWS regions in Organizations → Service Control Policies (SCP).
- If you're not using us-west-1, ap-southeast-2, etc. — block them to avoid surprise charges.

---

### 5) Tag Everything You Launch
**Add tags for tracking costs.**

aws ec2 create-tags \
  --resources i-0123456789abcdef0 \
  --tags Key=Owner,Value=Shubhadeep Key=Project,Value=DevOpsBootcamp

---

🧠 Root Account = Crown Jewels

- Think of the root account as the nuclear button.
- It has full control — and zero guardrails.
- Never use it for daily work
- Enable MFA
- Store credentials offline

**Create IAM user(s) for all actual activities**

---

#📉 Real Story: $8,000 Bill

Friend launched 1 EC2 instance per region "just for testing." Forgot to turn them off. 6 months later → $8,000+ bill.
**Lesson:** Set up billing alerts + cost explorer + region restrictions from Day 1.

---

#🔗 Useful Resources

- AWS Free Tier Usage Alerts
- IAM Best Practices
- AWS Budgets Setup

---

🧵 Related Links
🔗 Twitter Thread: [https://x.com/XT1396/status/1948678178551333196]
