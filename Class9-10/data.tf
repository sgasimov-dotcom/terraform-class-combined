data "aws_availability_zones" "all" {}

output "AZ" {
	value = data.aws_availability_zones.all.names
}

