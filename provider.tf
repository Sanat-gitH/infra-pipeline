terraform {
    backend "azurerm" {
        resource_group_name = "duapp"
        storage_account_name = "duappstg"
        container_name = "containerdu"
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