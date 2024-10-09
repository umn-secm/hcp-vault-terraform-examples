provider "vault" {
  address          = var.vault_address
  namespace        = var.namespace
  skip_child_token = true
}

terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
    }
  }
}
