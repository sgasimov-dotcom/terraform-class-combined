key_name      = "farrukh"
instance_type = "t3.micro"
region        = "eu-west-1"
public_key    = "~/.ssh/id_rsa.pub"
name          = "sec_group"
description   = "some description"
from_port     = "443"
to_port       = "443"
allowed_hosts = "0.0.0.0/0"


key_tags = {
  Name    = "Wordpress"
  Env     = "Dev"
  Team    = "DevOps"
  Quarter = "1"
  Bill    = "CFO"
}



