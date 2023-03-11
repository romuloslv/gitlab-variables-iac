terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "15.9.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.13.0"
    }
  }
  backend "local" { path = "terraform/state/terraform.tfstate" }
  required_version = ">= 0.13"
}