variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "eks-cluster"
}

variable "vpc_id" {
  description = "ID of the VPC"
  default     = "vpc-09de9e9eef3638ab7" #VPC ID
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  default     = ["subnet-04e3a24b0a17e1f0f", "subnet-051c6806d6663a75e"] # Subnet IDs
}

variable "instance_type" {
  description = "Instance type for worker nodes"
  default     = "t3.medium"
}

variable "node_group_role_arn" {
  description = "IAM role ARN for the managed node group"
  default     = "arn:aws:iam::201930638375:role/eks-node-group-role"
}

variable "cluster_service_cidr" {
  description = "Service CIDR for the EKS cluster"
  default     = "10.100.0.0/16" #CIDR range might need to be changed
}

variable "security_groups" {
  description = "List of security groups for the EKS node groups"
  default     = ["sg-05ed54b35cad30f2e", "sg-0e46b1f3cc38d7f8f"]
}