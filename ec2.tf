variable "my_aws_key_pair" {
    default = "C:\\Users\\anu\\Desktop\\Cloud\\terraform101\\terraform.pem"
    type = string
    description = "(optional) describe your variable"
}
resource "aws_instance" "my_ec2_instance" {
    ami = "ami-0e9089763828757e1"
    key_name = "terraform"
    instance_type = "t2.micro"
    security_groups = [aws_security_group.http_server_sg.id]
    subnet_id = aws_subnet.public_subnet_terraform.id

    connection {
        type ="ssh"
        host = self.public_ip
        user = "ec2-user"
        private_key = file(var.my_aws_key_pair)
       
    }
     provisioner "remote-exec" {
         inline =[
             // install httpd
         ]
        
       
        }
}