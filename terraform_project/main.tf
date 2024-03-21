
module "ec2_instances" {
  source  = "../terraform_project/modules/ec2_instance"
  ami                    = var.ami
  instance_type_module = var.instance_type
  availability_zone = var.availability_zone
}

module "network" {
  source  = "../terraform_project/modules/network"
  cidr_block_subnet = var.cidr_block_subnet
  private_subnet = var.private_subnet
  public_subnets = var.public_subnets
  cidr_block_vpc = var.cidr_block_vpc

}

module "website_s3_bucket" {
  source = "../terraform_project/modules/s3bucket"

  bucket_name = var.bucket_name

}
module "security_group" {
  source = "../terraform_project/modules/security_group"



}
