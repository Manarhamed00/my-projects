variable "private_subnet" {
  description = "private_subnet" 
  type = string 
}

variable "public_subnets" {
  description = "public_subnets" 
  type = string 
}
variable "cidr_block_subnet" {
  description = " cidr_block" 
  type = string 
}

variable "network_tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}

variable "cidr_block_vpc" {
  description = "vcp cidr_block" 
  type = string 
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "example-vpc"
}


