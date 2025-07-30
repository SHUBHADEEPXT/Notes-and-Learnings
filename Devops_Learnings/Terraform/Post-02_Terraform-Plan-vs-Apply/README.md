# 🔍 Terraform Plan ≠ Apply – Understand the Difference

One of the first confusions in Terraform:

## `terraform plan` 🧠

Dry run. No real changes.
Used to preview the *execution plan* — what Terraform **would** do.

## `terraform apply` 🔨

Executes the changes for real.
Reads the plan and performs the actions (create, update, delete).

---

### 🧪 Commands

terraform plan   # Simulate what will change
terraform apply  # Actually apply those changes

---

## 🧠 Why It Matters

- Plan shows if you’ve made a mistake before touching real infra
- Catch unwanted deletes or wrong names
- Safer in team environments
- Essential for automation pipelines (CI/CD)

---

## 💡 Pro Tips

- Use terraform apply -auto-approve only in pipelines
- Use terraform plan -out=tfplan + terraform apply tfplan in production
- Always save plan output for audits

---

📎 Related:
🔗 [https://x.com/XT1396/status/1950550206141055265]
