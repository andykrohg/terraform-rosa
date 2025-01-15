terraform {
  required_providers {
    rhcs = {
      version = ">= 1.6.7"
      source  = "terraform-redhat/rhcs"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.20.0"
    }

    validation = {
      source  = "tlkamp/validation"
      version = "1.1.1"
    }
  }
}

provider "rhcs" {
  token = var.token
  url   = var.ocm_api
  token_url = var.ocm_token_url
  client_id = var.ocm_client_id
  client_secret = var.ocm_client_secret
}

provider "aws" {
  region = var.region
}
