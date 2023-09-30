
# Define the EC2 instance resource
resource "aws_instance" "kubernetes_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  # Associate the security group and key pair with the instance
  vpc_security_group_ids = [aws_security_group.kubernetes_security_group.id]
  key_name               = aws_key_pair.kubernetes_key_pair.key_name

  # You can customize other instance attributes like user data, tags, etc. here
}

