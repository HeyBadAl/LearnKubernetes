# Define a security group for the EC2 instance
resource "aws_security_group" "kubernetes_security_group" {
  name        = "kubernetes_security_group"
  description = "Security group for EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

