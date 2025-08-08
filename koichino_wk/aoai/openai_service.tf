resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_cognitive_account" "example" {
  name                = var.resource_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "OpenAI"
  sku_name            = "S0"
}

resource "azurerm_cognitive_deployment" "example" {
  name                 = "${var.resource_name}"
  cognitive_account_id = azurerm_cognitive_account.example.id

    model {
      format  = "OpenAI"
      name    = var.model_name
      version = var.model_version
    }
    sku {
      name = var.deployment_type
      capacity = var.capacity
    }

  }
