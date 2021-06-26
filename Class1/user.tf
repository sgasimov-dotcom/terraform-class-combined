resource "aws_iam_user" "bob" {
  name = "bob"
  path = "/system/"
  tags = {
    Team = "DevOps"
  }
}

resource "aws_iam_user" "tim" {
  name = "tim"
  path = "/system/"
  tags = {
    Team = "DevOps"
  }
}