############################Common variabless############

variable "environment" {
  description = "Provide environment name"
}

variable "region" {
  description = "Provide region"
}

variable "cidr" {
  description = "provide vpc cidr range"
}

variable "availability_zones" {
  description = "provide availability zones"
}

variable "private_subnets" {
  description = "provide private subnet ranges"
}

variable "public_subnets" {
  description = "provide public sunbet ranges"
}


##############################variable for VPC######################

variable "vpc_name" {
  description = "provide vpc names"
}

##############################variable for EKS cluster######################

variable "cluster_name" {
  description = "cluster name"
  default     = "example-cluster"
}

variable "vpc_id" {
  description = "vpc id"
  default     = "vpc_id"
}

variable "aws_iam_role_name" {
  description = "aws iam role name"
  default     = "example-cluster"
}

variable "aws_security_group_name" {
  description = "aws security group"
}

variable "aws_eks_node_group_name" {
  description = "aws eks node group name"
}
