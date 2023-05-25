module "ec2_instances" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  count = length(var.instance_types)
  name  = var.instance_types[count.index]["name"]

  ami                    = "ami-0c5204531f799e0c6"
  instance_type          = var.instance_types[count.index]["instance_type"]
  vpc_security_group_ids = [module.vpc.default_security_group_id]
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}