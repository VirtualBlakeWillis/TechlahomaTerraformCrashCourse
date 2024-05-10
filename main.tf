terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.1.0"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "github" {
  token = var.token               // Github Token
  owner = var.github_organization // Github UserName/Organization
}