module "ec2" {
  source = "../ec2"
  for_each = var.loop_ec2
  ami           = each.value.ami
  instance_type = each.value.instance_type
  subnet_id = each.value.subnet_id
  owner = each.value.owner
  name = each.key
  
  security_group_id    = module.securitygroup.sg_id
  
}
module "securitygroup" {
    source = "../securitygroup"
    name        = var.name
    description = var.description
    vpc_id      = var.vpc_id
    
}