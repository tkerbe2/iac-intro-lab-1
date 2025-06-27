# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # This below says that it must use at least version 4.34.0 or higher
      version = ">=4.34.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

# This is where you will add your subscription ID
# I recommend passing this with GitHub secrets or as a Terraform Cloud secure variable
# For my demonstration I will just set it on my CloudShell file locally
  subscription_id = ""
}