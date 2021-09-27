provider "aws" {
  region  = "us-east-1"
  profile = "personal"
}

module "vpc" {
  source = "./modules/terraform-aws-vpc"
}

module "web_server" {
  source = "./modules/terraform-aws-ec2-web-server"

  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnets[0]
  key_name = "test-key-pair"
}

module "alb" {
  source = "./modules/terraform-aws-alb"

  depends_on       = [module.vpc]
  vpc_id           = module.vpc.vpc_id
  subnets          = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]
  target_group_arn = module.web_server.target_group_arn
}
