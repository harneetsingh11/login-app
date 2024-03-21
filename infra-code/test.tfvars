environment     = "test"
region     = "ap-southeast-1"
cidr     = "10.102.0.0/16"
availability_zones     = ["ap-southeast-1a", "ap-southeast-1b"]
private_subnets     = ["10.102.0.0/20", "10.102.32.0/20"]
public_subnets     = ["10.102.16.0/20", "10.102.48.0/20"]

##########################variable for VPC######################
vpc_name = "registerapp-vpc"
##########################variable for EKS######################
cluster_name        = "registerapp-cluster"
aws_iam_role_name   = "registerapp-cluster-role"
aws_security_group_name = "registerapp-eks-cluster-sg"
aws_eks_node_group_name = "registerapp-cluster-node-group"

