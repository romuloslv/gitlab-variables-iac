terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "15.9.0"
    }
  }
  required_version = ">= 0.13"
}