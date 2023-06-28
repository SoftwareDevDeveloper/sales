module "provision_ec1" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales first machine"
  key_name = "test100"
  instance_type = "t2.micro"
}

module "provision_ec2" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales second machine"
  key_name = "test100"
  instance_type = "t2.micro"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {   
  region = "eu-west-1"
}