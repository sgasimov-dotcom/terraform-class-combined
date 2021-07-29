resource "aws_key_pair" "automation" {
  key_name   = "automation"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCg4R48dxdhmJyKd0YhcISAgWN8Ir4yu2fnJoDSuysgEDk1T8Is80yzOVvLfUdOB9y5z6hVpT4snNUWSV2mA9CUNPe1U84FHfCws5fP2GEL6REVp7ijlBTla/oajP6rzd28Q3pB1C6BBXKJfYdjngkCHxgko/+cVEyV3uDw7xsAul8L7AMZbFbvaJmOYOZbl7MW7uuK3CmCIFmqYIC/4oEHaukJeTfbry3bm4p3lPwGnVQBWaDLb1GouV4Bl2Oui2aKiBuLYnYFC34STRNm1yXN5Lpoc6L8AyBjdiOU5uKe9j6WGQoVRYNAe6b6cZezJ2an/sGe1cNPWmqvPvv6zOwR ec2-user@ip-172-31-18-16.eu-west-2.compute.internal"
  tags = {
      Name = "DevOps"
  }
}

resource "aws_key_pair" "automation2" {
  key_name   = "automation2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCg4R48dxdhmJyKd0YhcISAgWN8Ir4yu2fnJoDSuysgEDk1T8Is80yzOVvLfUdOB9y5z6hVpT4snNUWSV2mA9CUNPe1U84FHfCws5fP2GEL6REVp7ijlBTla/oajP6rzd28Q3pB1C6BBXKJfYdjngkCHxgko/+cVEyV3uDw7xsAul8L7AMZbFbvaJmOYOZbl7MW7uuK3CmCIFmqYIC/4oEHaukJeTfbry3bm4p3lPwGnVQBWaDLb1GouV4Bl2Oui2aKiBuLYnYFC34STRNm1yXN5Lpoc6L8AyBjdiOU5uKe9j6WGQoVRYNAe6b6cZezJ2an/sGe1cNPWmqvPvv6zOwR ec2-user@ip-172-31-18-16.eu-west-2.compute.internal"
  tags = {
      Name = "DevOps"
  }
}