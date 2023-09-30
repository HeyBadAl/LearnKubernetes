# Define your AWS provider configuration
provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

# Module for EC2 instance
module "ec2_instance" {
  source = "./modules/ec2_instance"
}

# Output the public IP address of the created instance
output "instance_public_ip" {
  value = module.ec2_instance.public_ip
}
