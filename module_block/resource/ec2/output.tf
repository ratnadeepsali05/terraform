
output "ec2_outputs" {
  value = aws_instance.this_ec2.public_ip
}

output "instance_id" {
    value = aws_instance.this_ec2.id
  
}