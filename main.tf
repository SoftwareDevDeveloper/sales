module "provision-ec1" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "first_machine"
}

module "provision-ec2" {
  source = "git::https://github.com/SoftwareDevDeveloper/modules.git"
  machine_name = "second_machine"
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