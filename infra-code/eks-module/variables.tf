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

variable "subnet_ids" {
  description = "subnet ids"
  type = list(string)
}

variable "aws_security_group_name" {
  description = "aws security group"
}

variable "environment" {
  description = "Provide environment name"
}

variable "aws_eks_node_group_name" {
  description = "aws eks node group name"
}