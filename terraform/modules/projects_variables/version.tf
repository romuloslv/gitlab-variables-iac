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
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
  required_version = ">= 0.13"
}