data "aws_ami" "this_ubuntu_ami" {
    name_regex       = "ubuntu_ami"
      filter {
    name   = "name"
    values = ["ubuntu_ami"]
    }

}

data "aws_security_group" "default" {
  name = "default"  #var.vpc_security_group_ids[2]
}