module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "my-eks-cluster"
  ode_group_name = "my_node_gls"
  cluster_version = "1.31" # Latest EKS version at the time of writing
  subnet_ids      = ["subnet-0475abf0fd6adfce0","subnet-05d2056f662a6dc9f","subnet-01f99de82fab8114b"]
  vpc_id          = "vpc-036309236ea8db490"

  managed_node_group = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
      key_name      = "mum-key"
    }
  }
}
