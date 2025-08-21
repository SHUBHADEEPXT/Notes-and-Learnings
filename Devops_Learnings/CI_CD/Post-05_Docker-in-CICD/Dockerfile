
---

### 📄 `Dockerfile` (Optimized Version)

```dockerfile
# Use official Node image
FROM node:16

# Copy only dependency files first
COPY package*.json ./

# Install dependencies (caching layer)
RUN npm install

# Now copy the rest of your app
COPY . .

# Command to run your app (optional)
CMD ["npm", "start"]
