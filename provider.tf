terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.28.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "infra-rg"
    storage_account_name = "infrastg1"
    container_name       = "containerinfra"
    key                  = "infra-pipeline.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "38840de6-dd80-4026-aeb6-0afb4905c320"
}
