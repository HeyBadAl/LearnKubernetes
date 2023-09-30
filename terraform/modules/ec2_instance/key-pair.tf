
# Create an EC2 key pair 
resource "aws_key_pair" "kubernetes_key_pair" {
  key_name   = "kubernetes_key_pair"
  public_key = file("~/.ssh/id_rsa.pub")
}


