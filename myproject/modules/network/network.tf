#create vpc
resource "aws_vpc" "myvpc1" {
  cidr_block  = var.cidr_block_vpc
  tags = {
    Name = var.vpc_name
  }
}
#create private subnet
resource "aws_subnet" "myprivate_subnet" {
  vpc_id     = aws_vpc.myvpc1.id
  cidr_block = var.cidr_block_subnet
  tags = var.network_tags
}


# Create public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.myvpc1.id
  cidr_block = var.public_subnets
 
}

# Create internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc1.id
}

# Create a route table for public subnet
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.myvpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}
# Associate public subnet with public route table
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}
