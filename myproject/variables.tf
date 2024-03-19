
#ec2_variables
variable "ami" {
  description = "ami of the instance"  
}

variable "instance_type" {
  description = "instance_type of ec2"  
}

variable "availability_zone" {
  description = "availability_zone of ec2"  
}


#network variables
variable "private_subnet" {
  description = "private_subnet" 
  type = string 
}

variable "public_subnets" {
  description = "public_subnets" 
  type = string 
}
variable "cidr_block_subnet" {
  description = "vcp cidr_block" 
  type = string 
}

variable "network_tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}











variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "example-vpc"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "defaultvpc_id" {
  description = "its the ID for default VPC"  
}

variable "cidr_block_vpc" {
  description = "vcp cidr_block" 
  type = string 
}









#s3


variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  type        = string
}

variable "s3_tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}
