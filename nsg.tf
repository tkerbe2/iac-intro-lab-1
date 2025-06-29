#=================================#
# Network Security Group Resource #
#=================================#

resource "azurerm_network_security_group" "nsg_main" {
# Below I'm giving an example of how we can get clever and use variables in names using 
  name                = "${var.org}-${var.region}-nsg"
  location            = azurerm_resource_group.rg_main.location
  resource_group_name = azurerm_resource_group.rg_main.name

# Here we create one example NSG rule that allows inbound TCP 443 to our VNet
  security_rule {
    name                       = "https-inbound"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "10.0.0.0/16"
  }

  tags = {
    environment = var.env
  }
}