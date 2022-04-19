provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.aws_region
}

module "vpc" {
    source = "jiteshkanherkar/vpc-demo/aws"
    version = "1.0.0"
    cidr = var.cidr
    env = var.env
}


module "subnet" {
  source = "jiteshkanherkar/subnet-demo/aws//modules/subnet"
  version = "1.0.0"
  vpc_id = module.vpc.id
  cidr = module.vpc.cidr_block
  availability_zone = var.availability_zone
  env = var.env

}  
