
output "instance_domain_name" {
  value = aws_route53_record.carvcilla_dns_record.name
}

output "instance_id" {
  value = aws_instance.app_server.id
}
