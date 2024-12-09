globals {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "~> 3.0"
  }
}

generate_hcl "versions.tf" {
  content {
    terraform {
      required_providers {
        azurerm = {
          source  = global.azurerm.source
          version = global.azurerm.version
        }
      }
    }
  }
}

generate_hcl "providers.tf" {
  content {
    provider "azurerm" {
      features = {}
    }
  }
}