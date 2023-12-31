module "provision_ec1" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales first machine"
  machine_key = "test100"
}

module "provision_ec2" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales second machine"
  machine_key = "test100"
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