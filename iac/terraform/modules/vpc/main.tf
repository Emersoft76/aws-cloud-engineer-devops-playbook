provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {

  cidr_block = var.vpc_cidr

  tags = {
    Name = "enterprise-vpc"
  }

}

resource "aws_subnet" "public" {

  count = 2

  vpc_id = aws_vpc.main.id

  cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index)

  map_public_ip_on_launch = true

}

resource "aws_internet_gateway" "gw" {

  vpc_id = aws_vpc.main.id

}
