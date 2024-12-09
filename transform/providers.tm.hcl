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
          source  = globals.azurerm.source
          version = globals.azurerm.version
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