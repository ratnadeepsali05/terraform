module "ec2" {
        source = "/home/cloudshell-user/terraform/module_block/resource/ec2"
        This_api_termination = true
        This_key = "mum-key"
        This_az  = "ap-south-1a"
        This_tag =  "Ratnadeep"
        This_inst = "t2.micro"
        #This_sg  = ["sg-09d5d9601120f72dd"]
        This_ami = "ami-09b0a86a2c84101e1"
        #this_aws_vpc_id = module.aws_vpc.aws_vpc_id
        this_aws_instance_subnet = module.vpc.subnet_id


}

module "aws_vpc" {
        source = "/home/cloudshell-user/terraform/module_block/resource/vpc"
        this_vpc_cidr_block = "192.168.0.0/16"
        this_vpc_cidr_tags = "vpc"
        this_public_cidr_block  = "192.168.0.0/17"
        this_public_map_pub = true
        this_public_tags = "my_public"
        this_vpc_az = "ap-south-1a"
}