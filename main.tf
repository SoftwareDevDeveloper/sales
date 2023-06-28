module "provision_ec11" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales first machine"
  machine_key = "test100"
  machine_instancetype = "t2.micro"
}

module "provision_ec21" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "Sales second machine"
  machine_key = "test100"
  machine_instancetype = "t2.micro"
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