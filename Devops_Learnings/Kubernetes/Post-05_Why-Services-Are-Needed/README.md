# 📡 Why Kubernetes Services Are Needed

---

## 🧠 The Problem

Pods are **ephemeral** — they can restart at any time, and when they do, they get a **new IP**.

If other components (like frontend/backend) directly use the Pod IPs, the system breaks.

---

## 🏨 Analogy

- **Pods = Hotel Guests** 
- Their room (IP) may change

- **Kubernetes Service = Hotel Reception Desk** 
- Always available at the same number 
- Forwards requests to the current Pod(s)

---

## 📄 pod.yaml
Check the pod.yal file

## 📄 service.yaml
Check the service.yaml file

---

## 🧪 Types of Services

| Type         | Description                                 |
|--------------|---------------------------------------------|
| ClusterIP    | Internal communication only (default)       |
| NodePort     | Exposes service on node IP and static port  |
| LoadBalancer | Creates external Load Balancer (cloud only) |

--

## 🔗 Commands
```
kubectl get pods -o wide
kubectl describe service backend-service
kubectl port-forward svc/backend-service 8080:80
```
---

## 🎯 Takeaway

✅ Never rely on Pod IPs directly
✅ Always use a Service abstraction for stable communication
✅ Add readiness probes to avoid routing traffic to failing Pods

#Kubernetes #Networking #ServiceDiscovery #CloudNative

---

## Social Posts
Twitter Post - [ https://x.com/XT1396/status/1957762344613978467 ]
