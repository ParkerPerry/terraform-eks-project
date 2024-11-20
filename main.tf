terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
  required_version = ">= 1.3.3"
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source       = "./modules/vpc"
  name         = "${var.name}-${var.environment}"  # Project name + environment
  cidr_block   = var.cidr_block                   # VPC CIDR block
  subnet_count = var.subnet_count                 # Number of subnets
}

module "eks" {
  source              = "./modules/eks"
  cluster_name        = "${var.cluster_name}-${var.environment}" # Environment specific cluster
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = module.vpc.subnet_ids
  instance_type       = var.instance_type
  node_group_role_arn = aws_iam_role.eks_node_group_role.arn
}