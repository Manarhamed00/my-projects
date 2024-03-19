output "subnet_id" {
  value = aws_subnet.myprivate_subnet.id
}

output "vpc_id" {
  value  = aws_vpc.myvpc1.id
}