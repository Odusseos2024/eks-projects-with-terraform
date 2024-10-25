# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
}
 
# Terraform Profile
variable "aws_profile" {
  description = "AWS profile for SSO"
  type = string
  default = "Master"  
}
  
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
 
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "SAP"
}
