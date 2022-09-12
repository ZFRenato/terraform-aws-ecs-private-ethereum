terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4"
    }
    local  = {
      source = "hashicorp/local"
      version = "~> 2.1"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

provider "aws" {
  region = var.region
}

locals {
  common_tags = {
    "EthereumNetworkName" = var.network_name
  }
}
