# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"  
}
 
# Terraform Profile
variable "aws_profile" {
  description = "AWS profile for SSO"
  type = string
  default = "Master"  
}

