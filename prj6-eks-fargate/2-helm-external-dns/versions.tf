# Terraform Block
terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      version = ">= 5.31"
     }
    helm = {
      source = "hashicorp/helm"
      #version = "2.5.1"
      #version = "~> 2.5"
      version = "~> 2.9"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      #version = "~> 2.11"
      version = ">= 2.20"
    }    
  }
  
  backend "s3" {
    bucket  = "myphltfstatefile"
    key     = "dev/eks-externaldns/terraform.tfstate"
    profile = "WorkloadProd"
    region  = "us-east-1"

    # For State Locking
    dynamodb_table = "dev-eksexternaldns"
  }

}
