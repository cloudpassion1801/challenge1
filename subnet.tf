resource "aws_subnet" "public_subnet_terraform" {
    vpc_id = aws_vpc.terraform_vpc.id
    cidr_block = "10.100.0.0/24"
}