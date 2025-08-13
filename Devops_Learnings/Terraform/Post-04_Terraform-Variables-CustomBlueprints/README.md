# 🧠 Terraform Variables = Flexible Blueprints 🛠️

Hardcoding values in Terraform is like building homes without client input.

Variables make your infra **configurable**, **reusable**, and **environment-ready**.

---

## 🧱 Real-Life Analogy

- 🏠 Terraform = House blueprint
- 🧩 Variables = "Custom fields" like number of rooms, paint color, size
- 🧑 Client = Dev team who decides the inputs
- 🎯 Result = One blueprint, many house variations

---

## 🧪 Terraform Example

### variables.tf
```hcl
variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

### main.tf

resource "aws_instance" "myec2" {
  ami           = "ami-0abcd1234"
  instance_type = var.instance_type
}

### terraform.tfvars
instance_type = "t2.small"
```

---

##💡 Pro Tips

- Use .tfvars files for environment-specific values
- Default values are optional — use them smartly
- Use terraform plan -var-file=dev.tfvars for staging/prod

---

## 📎 Related Links
🔗 Twitter Link- [https://x.com/XT1396/status/1955621325772660919]
