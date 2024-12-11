// setup provider for terraform and use variable for region
provider "aws" {
  region = var.region
}
// setup require provider for terraform with latest version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}
// create new vpc with cidr block and name dev-vpc and declare variable for cidr_block
resource "aws_vpc" "dev-vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "dev-vpc"
  }
}

// create public subnet with cidr block and availability zone and declare variable for cidr_block and availability_zone
resource "aws_subnet" "public-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.public_subnet_availability_zone
  tags = {
    Name = "public-subnet"
  }
}

// create private subnet with cidr block and availability zone and declare variable for cidr_block and availability_zone
resource "aws_subnet" "private-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.private_subnet_availability_zone
  tags = {
    Name = "private-subnet"
  }
}
// create internet gateway and attach to vpc
resource "aws_internet_gateway" "dev-igw" {
  vpc_id = aws_vpc.dev-vpc.id
  tags = {
    Name = "dev-igw"
  }
}
// create route table and associate with public subnet and add 0.0.0.0/0 route to internet gateway
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.dev-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-igw.id
  }
  tags = {
    Name = "public-route-table"
  }
}
// associate public subnet with route table
resource "aws_route_table_association" "public-subnet-association" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.public-route-table.id
}
// create security group for ec2 instance with ssh and http ingress rules
resource "aws_security_group" "ec2-sg" {
  vpc_id = aws_vpc.dev-vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

// create ec2 instance with ami, instance type, subnet id, security group id, without key pair and do not declare variable for ami, instance_type, key_name, subnet_id, security_group_id
resource "aws_instance" "ec2-instance" {
  ami             = "ami-007868005aea67c54"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public-subnet.id
  security_groups = [aws_security_group.ec2-sg.id]
  tags = {
    Name = "ec2-instance"
  }
}

// create public ip for ec2 instance and associate with ec2 instance
resource "aws_eip" "ec2-eip" {
  instance = aws_instance.ec2-instance.id
}
