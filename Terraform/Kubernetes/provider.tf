terraform {
  required_version = "1.3.4"
  required_providers {

  }
  backend "local" {
    path = "/tmp/terraform.tfstate"
  }
}

provider "kubernetes" {
    host = "https://127.0.0.1:6443"
}