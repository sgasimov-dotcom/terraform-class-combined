variable "region" {
  type        = string
  description = "Please provide your region"
  default     = "eu-west-1"
}

variable "key_name" {
  type        = string
  description = "Please provide your key_name"
}

variable "public_key" {
  type        = string
  description = "Please provide your public_key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "key_tags" {
  type        = map(string)
  description = "Please provide your tags"
}


// variable "AZ" {
//     type = list 
//     description = "Please provide your AZs"
// }