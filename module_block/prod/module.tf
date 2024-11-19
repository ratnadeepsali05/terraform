module "ec2" {
    source = "/home/anup/terraform/deleteafterpractice/Module/Resources/EC2"
    this_image_id = "ami-09b0a86a2c84101e1"
    this_list = "t2.micro"
    this_disable_api_stop = false
    this_disable_api_termination = false
    #this_vpc_security_group_ids = "sg-0505874879e7ce6cd"
    this_aws_instance_subnet = module.vpc.subnet_id
    #this_sg_vpc_id = module.vpc.vpc_id
    //this_aws_vpc_id = module.aws_vpc.aws_vpc_id
}

module "vpc" {
     source = "/home/anup/terraform/deleteafterpractice/Module/Resources/VPC"
     this_vpc_cidr_block = "192.168.0.0/16"
     this_vpc_tags = "this_vpc"
     this_subnet_pub_cidr_block = "192.168.0.0/17"
     this_subnet_pub_map_ip  = true 
     this_subnet_pub_tags = "pub_subnet"
     this_vpc_az = "ap-south-1a"