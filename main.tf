module "provision_ec1" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales first machine"
}

module "provision_ec2" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales second machine"
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