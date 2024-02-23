resource "aws_key_pair" "myterraform" {
  key_name   = var.instance_keypair
  public_key = file(var.public_key_path)
}   
