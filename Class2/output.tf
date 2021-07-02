output "Message" {
  value = "Hello world"
}


output "Password" {
  value = "W4I3sIx6njGqcF@WVRq3Ol4LpEvzaGQWhrTWX@rFM0LeBsdABQ"
}

output "AZ"  {
  value  = aws_instance.web[0].availability_zone
}


output "public_ip"  {
  value  =  [  
    aws_instance.web[0].public_ip,
    aws_instance.web[1].public_ip,
    aws_instance.web[2].public_ip,
  ]
}