# Terraform Settings Block
terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = ">= 5.31"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      #version = "~> 2.11"
      version = ">= 2.20"
    }
    http = {
      source = "hashicorp/http"
      version = ">= 3.3.0"
    }
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }     
  }

  backend "s3" {
    bucket  = "myphltfstatefile"
    key     = "dev/eks-cw-logging/terraform.tfstate"
    profile = "WorkloadProd"
    region  = "us-east-1"

    # For State Locking
    dynamodb_table = "dev-ekscw-logging"
  }
}
