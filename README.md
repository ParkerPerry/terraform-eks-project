# Terraform EKS Project

## Overview
This project deploys:
- A VPC with public subnets.
- An EKS cluster for Kubernetes.
- EC2 instances as worker nodes.
- A sample containerized application with a Load Balancer.

## Prerequisites
- Terraform >= 1.3.3
- AWS CLI configured with credentials.
- `kubectl` installed for managing the EKS cluster.

## Deployment Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd terraform-eks-project