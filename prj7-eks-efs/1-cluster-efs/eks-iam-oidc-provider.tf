# Datasource: AWS Partition
data "aws_partition" "current" {}
  
# Resource: AWS IAM Open ID Connect Provider
resource "aws_iam_openid_connect_provider" "oidc_provider" {
  url                 = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
  client_id_list      = ["sts.${data.aws_partition.current.dns_suffix}"]
  thumbprint_list     = [var.eks_oidc_root_ca_thumbprint]
  
  tags = merge(
    {
      Name = "${var.cluster_name}-eks-irsa"
    },
    local.common_tags
  )
}
