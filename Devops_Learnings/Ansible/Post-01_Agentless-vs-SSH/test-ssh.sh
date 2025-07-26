### `test-ssh.sh` (Optional Utility Script)
```bash
#!/bin/bash

echo "Testing SSH connectivity for Ansible..."

SERVER="$1"
USER="${2:-ubuntu}"

if ssh -o BatchMode=yes -o ConnectTimeout=5 "$USER@$SERVER" "echo 'SSH OK'" 2>/dev/null; then
  echo "✅ SSH works. You can use Ansible!"
else
  echo "❌ SSH failed. Check firewall/user/permissions."
fi
