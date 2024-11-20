variable "cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_count" {
  description = "Number of public subnets"
  default     = 2
}

variable "name" {
  description = "Name of the VPC resources"
  default     = "eks-project"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

