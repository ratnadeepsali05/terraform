variable "ubuntu_ami" {
  description = "AMI for Ubuntu instance"
}

variable "aws_instance_type" {
  description = "Instance type for EC2"
}

variable "key_name" {
  description = "Key pair name for EC2 instance"
  type        = string
}

