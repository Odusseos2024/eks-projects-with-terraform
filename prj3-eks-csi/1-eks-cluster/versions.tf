# Terraform Block
terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 5.31"
    }
  }
  
  backend "s3" {
    bucket  = "myphltfstatefile"
    key     = "dev/eks-cluster/terraform.tfstate"
    profile = "WorkloadProd"
    region  = "us-east-1"

    # For State Locking
    dynamodb_table = "dev-ekscluster"      
  }
}
