resource "random_password" "password" {
  length           = 30
  special          = false
  override_special = "_%@"
}

output "password" { 
    value = random_password.password.result
    sensitive = true
}