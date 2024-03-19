
defaultvpc_id= "vpc-0f7196fbb0ad81f80"
instance_type = "c5.18xlarge"
ami = "ami-0c5204531f799e0c6"
cidr_block_subnet = "10.0.0.0/24"
private_subnet = "10.0.1.0/24"
public_subnets = "10.0.5.0/24"
cidr_block_vpc = "10.0.0.0/16"
vpc_name = "vpc1"
bucket_name = "s3_bucket1"
s3_tags = {
  "name" = "my_first_s3bucket"
}
network_tags = {
  "name" = "value"
}