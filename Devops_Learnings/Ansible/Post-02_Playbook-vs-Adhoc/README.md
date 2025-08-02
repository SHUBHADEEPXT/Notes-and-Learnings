# 📋 Ansible Day 2 – Playbook vs Ad-hoc Commands

> One of the first confusions every beginner hits:  
> “Should I use an ad-hoc command or write a playbook?”

Let’s clear this up 🔍

---

## 🔧 Ad-hoc Commands = Quick Fixes

Use for **simple, one-off tasks** that don’t need to be repeated or shared.

### 🔹 Examples:

# Ping all servers
ansible all -m ping

# Start nginx on 'web' group
ansible web -m service -a "name=nginx state=started"

✅ Fast
✅ Good for testing connectivity
✅ Useful for quick fixes in live environments

❌ Not reusable
❌ No version control
❌ Hard to share in teams

---

## 📖 Playbooks = Structured Recipes
Use when you want repeatable, organized, and collaborative automation.

Example:
Check the # start-nginx.yml

Run with:
ansible-playbook start-nginx.yml

✅ Reusable
✅ Version-controllable
✅ Best for teams and CI/CD pipelines

❌ Requires more structure
❌ Slightly more learning curve✅ Reusable
✅ Version-controllable
✅ Best for teams and CI/CD pipelines

❌ Requires more structure
❌ Slightly more learning curve

---

## 🧠 Rule of Thumb

+----------------------+-------------+
| Use Case             | Choose      |
+----------------------+-------------+
| Ping a host          | Ad-hoc      |
| Install a package    | Ad-hoc      |
| Configure Nginx      | Playbook    |
| Deploy apps          | Playbook    |
| Automate Infra       | Playbook    |
+----------------------+-------------+

---

## 💡 Analogy:

- Ad-hoc = Quick street food
- Playbook = Full-course recipe from a cookbook

---

## 📁 Files in this folder

- ping-adhoc.sh	---- Simple SSH connectivity check
- start-nginx.yml ---- Basic Ansible playbook

---

🧵 Related Twitter Post- [https://x.com/XT1396/status/1951655570907476286]
