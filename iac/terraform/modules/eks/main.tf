resource "aws_eks_cluster" "cluster" {

  name = "enterprise-eks"

  role_arn = var.cluster_role

  vpc_config {

    subnet_ids = var.subnet_ids

  }

}
