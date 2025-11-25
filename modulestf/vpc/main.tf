resource "aws_vpc" "my-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}


resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.azone
  tags = {
    Name = "${var.env}-subnet"
  }
}

output "pubsubnet" {
  value = aws_subnet.main.id
  description = "The ID of the public subnet"
}