# 📝 kubectl apply vs create – Explained

---

## 🎯 What's the Difference?

| Command         | Behavior                                       |
|----------------|------------------------------------------------|
| `kubectl create` | Creates resource once. Fails if it exists ❌ |
| `kubectl apply`  | Creates or updates a resource ✅              |

---

## 🧠 Analogy

- `create` = Submitting a signed form. If you need to change it? Re-submit manually.
- `apply` = Syncing an editable doc with the cluster. Smart and declarative.

---

## 📄 Example YAML (create-example.yaml)
Commands:
- kubectl create -f create-example.yaml
- kubectl create -f create-example.yaml
# Fails: AlreadyExists

## 📄 Updated YAML (apply-example.yaml)
Command:
- kubectl apply -f apply-example.yaml
# Updates the configMap automatically

## 🔧 Bonus Tip
- kubectl diff -f apply-example.yaml
# Shows what will change before applying

---

🔗 Resources
🐦 Twitter Thread: [ https://x.com/XT1396/status/1955267980767514891 ]

---
## ✅ TL;DR

- Use create for simple one-time resources
- Use apply when syncing files in GitOps or IaC
- Use kubectl diff to preview changes

#Kubernetes #GitOps #DevOps #100DaysOfDevOps

