resource "aws_instance" "this_ubuntu" {
    ami = var.this_list[0] 
    disable_api_stop  = var.this_list[1] 
    disable_api_termination = var.this_list[2]  
    instance_type = var.this_list[3]
    key_name= var.this_list[4]
    vpc_security_group_ids = [var.this_list[5]]
    count = var.this_list[6]
    tags = {
      purpose = "webserver"
    } 
    

}