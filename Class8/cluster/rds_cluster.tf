resource "random_password" "password" {
  length           = 30
  special          = false
  override_special = "_%@"
}


resource "aws_ssm_parameter" "wordpress" {
  name  = "/devops/us-east-2/passwords/wordpress-cluster"
  type  = "SecureString"
  value = random_password.password.result
}



resource "aws_rds_cluster" "default" {
	cluster_identifier = "dbname"
	engine = "aurora"
	engine_version = "5.6.10a"
	database_name = "dbname"
	master_username = "wordpress"
	master_password = random_password.password.result
	db_subnet_group_name = aws_db_subnet_group.default.name
	skip_final_snapshot = true  
	vpc_security_group_ids = [
		aws_security_group.wordpress-db.id
	]
}


