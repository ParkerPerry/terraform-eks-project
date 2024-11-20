variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16" # Ensures compatibility with VPC settings in main.tf
}

variable "name" {
  description = "Name prefix for resources"
  default     = "terraform-eks-project" 
}

variable "subnet_count" {
  description = "Number of subnets to create"
  type        = number
  default     = 2
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "eks-cluster"
}

variable "instance_type" {
  description = "Instance type for worker nodes"
  default     = "t3.medium"
}

variable "node_group_role_arn" {
  description = "IAM role ARN for the managed node group"
  default     = "arn:aws:iam::201930638375:role/eks-node-group-role"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"] # Ensures multi-AZ setup
}

variable "project_name" {
  description = "Name of the project"
  default     = "terraform-eks-project"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  default     = "dev"
}