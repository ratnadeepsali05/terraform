
resource "aws_iam_user" "iamuserratnadeep" {
  name = "ratnadeep"
  path = "/"

  tags = {
    name = "ratnadeep"
  }
}