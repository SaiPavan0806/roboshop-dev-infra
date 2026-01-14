#### Custome Module:

#commenting the below lines because we could pass the below lines under VARIABLES
# VPC
module "vpc" {
  source = "git::https://github.com/SaiPavan0806/terraform-aws-vpc.git?ref=main" # you'll mention the source as github repo because the changes in prod envirnmoent would be directly pulled from the repo.
  vpc_cidr = var.vpc_cidr
  project_name = var.project_name
  environment = var.environment
  vpc_tags = var.vpc_tags

#public subnets
  public_subnet_cidrs = var.public_subnet_cidrs

#private subnets
  private_subnet_cidrs = var.private_subnet_cidrs

  #database subnets
  database_subnet_cidrs = var.database_subnet_cidrs

  is_peering_required = true #if user decides that they don't want peering 
}
