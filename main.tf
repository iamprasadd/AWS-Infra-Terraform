module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  subnet_id = module.vpc.public_subnet_id
  security_group_id = module.vpc.wegSG_id
}