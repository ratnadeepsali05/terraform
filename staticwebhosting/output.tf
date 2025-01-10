
/*output "instance_domain_name" {
  value = aws_route53_record.carvcilla_dns_record.name
}*/

output "instance_id" {
  value = aws_instance..id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.carvcilla_instance.public_ip
}