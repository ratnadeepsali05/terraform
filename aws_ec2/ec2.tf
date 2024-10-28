resource "aws_instance" "this_inst" {
    ami = "ami-0c8eea98010057bd0" 
    disable_api_stop  = true 
    disable_api_termination = true  
    instance_type = "t4g.nano" 
    key_name = "mum-key"
    count = 4  #loop 
    tags = {
      name = "ratnadeep sali"
    } 
    

}    