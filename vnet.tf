#============================#
# Network Configuration File #
#============================#


resource "azurerm_resource_group" "rg_main" {
  name     = "example"
  # Notice I used a variable below by using var.<variable name>
  location = var.region
}

# Below is where I define my Virtual Network VNet resource

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.rg_main.location
  resource_group_name = azurerm_resource_group.rg_main.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

# I need to add at least 1 subnet that falls within the address space
# This is my first subnet and I call it web

  subnet {
    name             = "web"
    address_prefixes = ["10.0.1.0/24"]
    security_group   = azurerm_network_security_group.nsg_main.id
  }

# I add a second subnet here and call it app

  subnet {
    name             = "app"
    address_prefixes = ["10.0.2.0/24"]
  }

# Tags are helpful to label and identify resources for certain uses or departments for billing

  tags = {
    # I am using my variable in a tag to keep my resources consistant
    environment = var.env
    org         = var.org
  }
}
