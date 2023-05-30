resource "aws_eks_cluster" "private_cluster" {
  name     = "private-cluster"
  role_arn = aws_iam_role.private_cluster.arn
  version  = "1.27"

  vpc_config {
    subnet_ids = [module.network.prv_subnet1, module.network.prv_subnet2]
  }

  depends_on = [
    aws_security_group.private_cluster_sg
  ]
}

data "aws_eks_cluster_auth" "private_cluster" {
  name = aws_eks_cluster.private_cluster.name
}

data "aws_eks_cluster" "private_cluster" {
  name = aws_eks_cluster.private_cluster.name
}