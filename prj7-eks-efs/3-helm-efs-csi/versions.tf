# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.70"
      version = ">= 4.65"
    }
    http = {
      source = "hashicorp/http"
      #version = "2.1.0"
      #version = "~> 2.1"
      version = "~> 3.3"
    } 
    helm = {
      source = "hashicorp/helm"
      #version = "2.4.1"
      #version = "~> 2.4"
      version = "~> 2.9"
    }
  }
  
  backend "s3" {
    bucket  = "myphltfstatefile"
    key     = "dev/eks-efsstorage/terraform.tfstate"
    profile = "WorkloadProd"
    region  = "us-east-1"
    
    # For State Locking
    dynamodb_table = "dev-eksefsstorage"
  }
}

