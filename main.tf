module "eks" {
 source  = "terraform-aws-modules/eks/aws"
 version = "~> 21.0"

 name    = "eks_demo"
 kubernetes_version = var.cluster_version

 endpoint_public_access = true

 enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    example = {
      name           = "demo-node-group"
      instance_types = [var.instance_size]
      min_size       = var.replica_min_size
      max_size       = var.replica_max_size
      desired_size   = var.replica_desired_size
    }
  }

 vpc_id     = aws_vpc.eks_vpc.id
 subnet_ids = aws_subnet.eks_public_subnet.*.id

}


