
resource "aws_instance" "my_instance" {
  ami           = var.ami 
  instance_type = var.instance_type_module
  #By using output variables we have access to the subnet ID
  subnet_id     = module.network.subnet_id
  security_groups = module.security_group.security_group_id
  
}