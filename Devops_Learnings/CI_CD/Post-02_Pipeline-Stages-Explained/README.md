# ⚙️ CI/CD Day 2/7: Pipeline Stages Decoded

## 🧠 What is a CI/CD Pipeline?

A pipeline is an automated path your code follows from **push to production**. Each stage ensures your software is safe, tested, and deployable.

---

## 🔁 Typical CI/CD Stages:

1. **📥 Source**
   - Triggered by `git push` or `pull request`

2. **🔨 Build**
   - Compile, package (Maven/Gradle/npm)
   - Example: `mvn package`, `npm run build`

3. **🧪 Test**
   - Unit + Integration tests
   - Fail fast to avoid wasting time downstream

4. **🔎 Scan**
   - Static Code Analysis (SCA) using SonarQube, etc.
   - Detect bugs, code smells, coverage

5. **📦 Artifact**
   - Store built files or Docker images (JAR, WAR, .img)
   - Pushed to DockerHub, ECR, Nexus, or Artifactory

6. **🚀 Deploy**
   - Stage → Prod
   - Tools: ArgoCD, Jenkins, GitHub Actions, Helm, etc.

---

## 💡 Pro Tips

- ✅ Always run tests before building images
- ✅ Run SCA tools early (cheaper to fix)
- ✅ Use `.dockerignore` to speed up builds
- ✅ Split pipeline into separate jobs (for caching, speed)

---

## 🙌 Credits

- @TechGuftgu
- @AbhishekVeeram1

---

## 🔗 Related Links

- 🐦 [Twitter Post](<https://x.com/XT1396/status/1950891270475518012>)
