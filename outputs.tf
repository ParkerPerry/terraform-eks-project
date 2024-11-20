output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.vpc.subnet_ids
}

output "eks_node_group_role_arn" {
  description = "IAM Role ARN for the EKS Node Group"
  value       = aws_iam_role.eks_node_group_role.arn
}