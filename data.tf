data "aws_eks_cluster_auth" "default" {
  name = aws_eks_cluster.eks_cluster.id
}

data "aws_iam_policy_document" "worker_node_role_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

data "aws_caller_identity" "current" {}