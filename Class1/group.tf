resource "aws_iam_group" "developers" {
  name = "wheel"
  path = "/users/"
}


resource "aws_iam_group" "Sales" {
 name = "Sales"
  path = "/users/"
}