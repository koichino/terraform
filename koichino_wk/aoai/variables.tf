variable "resource_name" {
  description = "The name of the Azure Cognitive Account."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

variable "sku" {
  description = "The SKU for the Azure Cognitive Account."
  type        = string
}

variable "capacity" {
  description = "The capacity for the Azure Cognitive Deployment."
  type        = number
}