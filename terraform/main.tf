# Define your AWS provider configuration
provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

<<<<<<< HEAD
# Module for EC2 instance
module "ec2_instance" {
  source = "./modules/ec2_instance"
=======
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

# Create an EC2 key pair (change the key_name)
resource "aws_key_pair" "kubernetes_key_pair" {
  key_name   = "kubernetes_key_pair"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Define the EC2 instance resource
resource "aws_instance" "kubernetes_instance" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  # Associate the security group and key pair with the instance
  vpc_security_group_ids = [aws_security_group.kubernetes_security_group.id]
  key_name               = aws_key_pair.kubernetes_key_pair.key_name

  # You can customize other instance attributes like user data, tags, etc. here
>>>>>>> IaC
}

# Output the public IP address of the created instance
output "instance_public_ip" {
<<<<<<< HEAD
  value = module.ec2_instance.public_ip
}
=======
  value = aws_instance.kubernetes_instance.public_ip
}

>>>>>>> IaC
