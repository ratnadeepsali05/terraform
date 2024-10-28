resource "aws_instance" "this_inst" {

    ami = " ami-0c8eea98010057bd0" 
    disable_api_stop  = true 
    disable_api_termination = true  
    instance_type = "t2.micro" 
    key_name = "mum-key"
    security_groups = ["sg-0a915226a5d9bb382"]
    count = 4  #loop 
    tags = {
      name = "ratnadeep sali"
    } 
    

}    