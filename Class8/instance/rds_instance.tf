resource "random_password" "password" {
  length           = 30
  special          = false
  override_special = "_%@"
}

output "password" {
  value     = random_password.password.result
  sensitive = true
}


resource "aws_ssm_parameter" "wordpress" {
  name  = "/devops/us-east-1/passwords/wordpress"
  type  = "SecureString"
  value = random_password.password.result
}
