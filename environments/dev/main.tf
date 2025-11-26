module "vpc" {
  source = "../../modulestf/vpc"
  vpc_cidr   = "172.16.0.0/16"
  subnet_cidr = "172.16.0.0/24"
  azone       = "${var.aws_region}a"
  env = "dev"
}

module "ec2" {
  source = "../../modulestf/ec2"
  ami_id = "ami-0fa3fe0fa7920f68e"
  instance_type = "t3.micro"
  subnet_id = module.vpc.pubsubnet
  ec2_count = 1
  env = "dev"
}