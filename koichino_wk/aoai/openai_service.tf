resource "azurerm_resource_group" "example" {
  name     = "${var.resource_name}-rg"
  location = var.location
}

resource "azurerm_cognitive_account" "example" {
  name                = var.resource_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "OpenAI"
  sku_name            = var.sku
}

resource "azurerm_cognitive_deployment" "example" {
  name                 = "${var.resource_name}-deployment"
  cognitive_account_id = azurerm_cognitive_account.example.id

    model {
      format  = "OpenAI"
      name    = "text-curie-001"
      version = "1"
    }

    sku {
      name = var.sku
    }
  }
