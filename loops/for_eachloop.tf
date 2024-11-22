
resource "aws_instance" "this_aws_instance" {
    for_each = toset(var.aws_ami)
    ami = each.value
    instance_type = "t3.medium"

    
} 

variable aws_ami {
       type = list(string)
       default = ["ami-09b0a86a2c84101e1", "ami-0aebec83a182ea7ea", "ami-022ce6f32988af5fa" , "ami-04a81a99f5ec58529" ]
}


output "aws_public_ip" {
    value = [for instance in var.aws_ami:
    aws_instance.this_aws_instance[instance].public_ip]
}