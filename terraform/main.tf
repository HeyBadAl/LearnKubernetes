# Define your AWS provider configuration
provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

# Module for EC2 instance
module "ec2_instance" {
  source = "./modules/ec2_instance"
}

