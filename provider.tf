terraform {
    backend "azurerm" {
        resource_group_name = "infra-rg"
        storage_account_name = "infrastg1"
        container_name = "containerinfra"
        key = "infra-pipeline.terraform.tfstate"
    }

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.28.0"
    }
  }
  
}

provider "azurerm" {
    features {} 
    subscription_id = "29a3f52d-be41-4c3d-9f54-e5e0210dfe4b"
}
