resource "aws_internet_gateway" "my_gateway"{
    vpc_id = aws_vpc.terraform_vpc.id

}