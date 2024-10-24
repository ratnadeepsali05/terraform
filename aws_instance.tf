# Provider configuration for AWS
provider "aws" {
  region = "us-east-1"
}

# Define a security group to allow SSH access
resource "aws_security_group" "instance_sg" {
  name        = "allow_ssh"
  description = "Security group for EC2 instance to allow SSH"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 Instance definition
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Example Amazon Linux 2 AMI (Check your region for valid AMI)
  instance_type = "t2.micro"

  # Security group
  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  # Key pair for SSH access (replace with your key)
  key_name = "your-key-name"

  # Define the instance's tags
  tags = {
    Name = "MyTerraformInstance"
  }

  # User data (optional): Script to run at launch (e.g., install a web server)
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install httpd -y
              sudo systemctl start httpd
              sudo systemctl enable httpd
              EOF
}

# Output the public IP address of the instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

