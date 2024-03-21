############################TO Deploy VPC#######################################
module "vpc" {
   source                       = "./vpc-module"
   name                         = var.vpc_name
   environment                  = var.environment
   cidr                         = var.cidr
   private_subnets              = var.private_subnets
   public_subnets               = var.public_subnets
   availability_zones           = var.availability_zones
}
############################TO Deploy EKS#######################################
module "eks" {
   source                       = "./eks-module"
   cluster_name                 = var.cluster_name
   vpc_id                       = module.vpc.id
   environment                  = var.environment
   aws_iam_role_name            = var.aws_iam_role_name
   subnet_ids                   = module.vpc.public_subnet_ids
   aws_security_group_name      = var.aws_security_group_name
   aws_eks_node_group_name      = var.aws_eks_node_group_name
}