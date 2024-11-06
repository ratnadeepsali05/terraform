variable "this_image_id" {
  type        = string
  default = "ami-09b0a86a2c84101e1"
}

variable "this_disable_api_stop" {
  type        = bool
  default = true
}
variable "this_disable_api_termination" {
    type = bool 
    default = true
    description = "this variable is used to pass bool data to api_termination" 
}
variable "this_count" {
    type = number 
    default = 2
     
}
variable "this_vpc_security_group_ids" {
    type = string 
    default = "sg-0a915226a5d9bb382"
     
}

variable "this_list" {
    type = list 
    default = ["t2.micro" , "2" , "false"]
     
}
#map and any 