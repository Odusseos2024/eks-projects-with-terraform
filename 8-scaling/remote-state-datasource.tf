data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket  = "myphltfstatefile"
    key     = "dev/eks-users/terraform.tfstate"
    profile = "WorkloadProd"
    region  = "us-east-1"
  }
}
