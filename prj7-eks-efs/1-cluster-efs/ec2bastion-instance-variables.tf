# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 Key pair that need to be associated with EC2 Instance"
  type = string
  default = "eks-terraform-key"
}
variable "public_key_path" {
  description = "Public Keypair"
  default = "~/.ssh/terraform-keypair.pub"
}
variable "private_key_path" {
  description = "Private Keypair"
  default = "~/.ssh/terraform-keypair.pem"
}
  
# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t3.micro"  
}
