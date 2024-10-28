
resource "aws_iam_user" "iamuserratnadeeps" {
  name = "ratnadeeps"
  path = "/"

  tags = {
    name = "ratnadeep"
  }
}