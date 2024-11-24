 
  resource "aws_instance" "this_aws_instance" {
    //for_each = toset(var.imageid)
    ami = "ami-0614680123427b75e"
    vpc_security_group_ids = ["sg-0a915226a5d9bb382"]
    key_name = "mum-key"
    instance_type = "t2.micro"
 
    connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("${path.module}/id_rsa.pem")
    host     = "${self.public_ip}"
  }

  provisioner "remote-exec" {
    inline = [
      "yum install httpd -y",
      "systemctl start httpd",
      "systemctl enable httpd"
    ]
  }
    
}  