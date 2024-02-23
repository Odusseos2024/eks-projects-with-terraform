# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.70"
      version = ">= 4.65"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      #version = "~> 2.7"
      version = ">= 2.20"
    }    
  }

  backend "s3" {
    bucket  = "myphltfstatefile"
    key     = "dev/eks-mgmtapp/terraform.tfstate"
    profile = "WorkloadProd"
    region  = "us-east-1"

    # For State Locking
    dynamodb_table = "dev-eksmgmtapp"
  }
}
