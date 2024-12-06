generate_hcl "terraform.tf" {
    content {
        terraform {
            required_providers {
                azurerm = {
                    source  = global.terraform.providers.azurerm.source
                    version = global.terraform.providers.azurerm.version
                }
            }
        }
    }
}

generate_hcl "providers.tf" {
    content {
        provider "azurerm" {
            features {}
            storage_use_azuread = true
        }
    }
}