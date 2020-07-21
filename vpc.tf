resource "aws_vpc" "terraform_vpc" {
    cidr_block = "10.100.0.0/16"
    
    tags ={
name = "my_terraform_vpc"
    }

}
output "my_vpc" {
    value = aws_vpc.terraform_vpc.id
}