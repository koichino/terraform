variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}
variable "resource_name" {
  description = "The name of the Azure Cognitive Account."
  type        = string
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "japaneast"
}

variable "model_name" {
  description = "(Required) The name of the Cognitive Services Account Deployment model. Changing this forces a new resource to be created. See - https://learn.microsoft.com/en-us/azure/ai-foundry/openai/concepts/models?tabs=global-standard%2Cstandard-chat-completions"
  type        = string
  default     = "text-curie-001"
}
variable "model_version" {
  description = " (Optional) The version of Cognitive Services Account Deployment model. If version is not specified, the default version of the model at the time will be assigned."
  type        = string
}
variable "deployment_type" {
  description = "(Required) The name of the SKU. Possible values include Standard, DataZoneBatch, DataZoneStandard, DataZoneProvisionedManaged, GlobalBatch, GlobalProvisionedManaged, GlobalStandard, and ProvisionedManaged. See - https://learn.microsoft.com/ja-jp/azure/ai-foundry/openai/how-to/deployment-types"
  type        = string
  default     = "GlobalStandard"
}
variable "capacity" {
  description = "(Optional) Tokens-per-Minute (TPM). The unit of measure for this field is in the thousands of Tokens-per-Minute. Defaults to 1 which means that the limitation is 1000 tokens per minute. See more detail - https://learn.microsoft.com/ja-jp/azure/ai-foundry/openai/how-to/quota?tabs=rest"
  type        = number
  default     = 10
}