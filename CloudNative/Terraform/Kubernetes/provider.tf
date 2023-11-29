// Configuration for a local device (Mac M1 Chip)
terraform {
  required_version = "1.3.4"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.11.0"
    }
  }
  backend "local" {
    path = "/tmp/terraform.tfstate"
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
}