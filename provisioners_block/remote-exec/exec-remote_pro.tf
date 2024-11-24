resource "aws_instance" "this_aws_instance" {
    ami = "ami-0614680123427b75e"
    vpc_security_group_ids = ["sg-0a915226a5d9bb382"]
    key_name = "mum-key"
    instance_type = "t2.micro"
     
     provisioner "file" {
    source      = "readme.md"
    destination = "/home/ec2-user/readme.md"
    provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx",
      "sudo systemctl start nginx"
    ]
    

    connection {
     type     = "ssh"
     user     = "ec2-user"
     private_key = file("${path.module}/id_rsa.pem")
     host     = "${self.public_ip}"
  }
  }

  tags = {
    Name = "MyInstance"
  }
}
}
 
