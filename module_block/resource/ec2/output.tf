
output "ec2_outputs" {
  value = aws_instance.this_instance.public_ip
}