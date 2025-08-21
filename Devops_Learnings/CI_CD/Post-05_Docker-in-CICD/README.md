# 🐳 CI/CD Day 5/7: Docker in CI Pipelines

---

## 🐢 Problem
Many developers write inefficient Dockerfiles like this:

```dockerfile
FROM node:16
COPY . .
RUN npm install
```

---

## Result?
❌ Long CI builds
❌ Broken caching
❌ Slow feedback loops

---

## ⚡ Solution: Layer Caching
```
FROM node:16
COPY package*.json ./
RUN npm install
COPY . .
```

---

## 💡 Why it works:
- Dependencies (npm install) cached separately
- Unchanged deps = no rebuild
- Faster Docker builds
- Perfect for CI pipelines

---

## 📦 Real Impact

Naive Dockerfile ~5 minutes
Optimized build	~30–40 seconds ✅

---

## 🛠️ Pro Tips

- Add .dockerignore to exclude:
	-node_modules
	-.git
	-coverage/, logs/, tmp/
- Use multi-stage builds (covered later)
- Store image in DockerHub or ECR

---

## 🔗 Related Links
🐦 Twitter Post - [ https://x.com/XT1396/status/1958549263211765851 ]
