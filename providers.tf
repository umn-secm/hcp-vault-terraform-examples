provider "vault" {
  address   = var.vault_address
  namespace = var.namespace
}

terraform {
  backend "azurerm" {}
  required_providers {
    vault = {
      source = "hashicorp/vault"
    }
  }
}
