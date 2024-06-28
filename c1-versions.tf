# Terraform Block
terraform {
cloud {
    organization = "SabreMI"

    workspaces {
      name = "testworkspace1"
    }
  }
  required_version = ">= 1.1" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  }

# Provider Block
provider "aws" {
  region  = "us-east-1"
  #profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
