module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "~> 18.31.2" # Updated cluster module version
  cluster_name    = var.cluster_name
  cluster_version = "1.27"
  vpc_id          = var.vpc_id
  subnet_ids      = var.subnet_ids
}

module "managed_node_group" {
  source                  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version                 = "~> 20.29.0"
  cluster_name            = module.eks.cluster_name
  subnet_ids              = var.subnet_ids
  name                    = "managed-ng"
  iam_role_arn            = var.node_group_role_arn
  desired_size            = 2
  max_size                = 3
  min_size                = 1
  instance_types          = [var.instance_type]
  launch_template_id      = aws_launch_template.eks_node_group.id
  launch_template_version = "$Latest"
  cluster_service_cidr = var.cluster_service_cidr

}

resource "aws_launch_template" "eks_node_group" {
  name_prefix   = "eks-node-group"
  description   = "Launch template for EKS node group"
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  iam_instance_profile {
    name = "eks-node-group-role"
  }
}