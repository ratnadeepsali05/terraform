variable "this_image_id" {
  type        = string
  default = "mysql"
}

variable "this_disable_api_stop" {
  type        = bool
  default = false
}
variable "this_disable_api_termination" {
    type = bool 
    default = false
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
    default = ["20" , "mysql" , "8.0" , "db.t3.micro" , "mydatabase_mysql_1" , "admin" , "password123" , "default.mysql8.0" , "true" , "true" , "sg-0a915226a5d9bb382" , "false"]
     
}
