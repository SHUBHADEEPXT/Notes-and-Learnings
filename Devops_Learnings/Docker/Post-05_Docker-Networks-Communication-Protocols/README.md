# 🐳 Docker Day 5: Networks = Family Communication Protocols 📡

When my family set clear channels on moving day, chaos vanished:
- Family group (everyone)
- Dad ↔ movers (external)
- Parents-only (secure)

That’s Docker networks.

![Docker Networks Analogy](../../images/docker-networks-family-protocols.png)

---

## 🧠 Mapping
| Real Life Channel     | Docker Network      | Purpose                     |
|-----------------------|---------------------|-----------------------------|
| Family group          | `public_web`        | Users ↔ frontend            |
| Family internal       | `internal_api`      | Frontend ↔ backend          |
| Parents-only secure   | `database_secure`   | Backend ↔ DB (private)      |

**Rule:** DB never on `public_web`. Frontend never on `database_secure`.

---

## 🛠️ Run It
```
docker compose up -d
docker network ls
docker inspect <container> --format '{{json .NetworkSettings.Networks}}' | jq
```

## Quick test
# frontend can reach backend
```curl http://localhost:3000/api/health```

# frontend CANNOT reach DB directly (expected to fail)
```docker exec -it frontend sh -c "nc -zv database 5432"```

---

## ✅ Best Practices

- Create custom networks; avoid default bridge for multi-service apps.
- Put DB on a private network only reachable by backend.
- Keep ports published only where needed (usually frontend).
- Use service names as DNS (e.g., backend, database). 

---

## 🔗 Links

Twitter thread: [ https://x.com/XT1396/status/1957462577107394593 ]
