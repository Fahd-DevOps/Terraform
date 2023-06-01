provider "aws" {
  region = var.REGION
}

provider "kubernetes" {
  host                   = aws_eks_cluster.private_cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.private_cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.private_cluster.token
  # load_config_file       = false
  # timeout = "10m"
}
