# my_terraform_modules

## Main file to use Network module
terraform {
  required_version = "~> 1.2"

# Define your own backend (s3 example)
  backend "backendtype" {
    bucket = "bucket_name"
    key    = "path/to/terraformstate/terraform.state"
    region = "regiontouse"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

provider "aws" {
  region = "set aws provider here"
}

module "Networking" {
  source            = "./modules/Networking"
  availability_zone = "put availability zone here"
  environment       = "Environment to use"
  allocation_id     = "set the allocation id (elastic ip id for the nat gateway)"
}

