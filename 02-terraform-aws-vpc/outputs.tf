output "vpc_id" {
  value = aws_vpc.dev-vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.dev-vpc.cidr_block
}

