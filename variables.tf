variable "location" {
  type        = string
  description = "Azure region where the resource should be deployed."
  nullable    = false
}

variable "name" {
  type        = string
  description = "The name of the this resource."
  nullable    = false
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group name details."
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription where logprofile insights should be deployed."
  nullable    = false
}

variable "categories" {
  type        = list(string)
  default     = []
  description = "Logprofile insights categories that should be deployed."
  nullable    = false
}

variable "enable_telemetry" {
  type        = bool
  default     = true
  description = <<DESCRIPTION
This variable controls whether or not telemetry is enabled for the module.
For more information see <https://aka.ms/avm/telemetryinfo>.
If it is set to false, then no telemetry will be collected.
DESCRIPTION
}

variable "locations" {
  type        = list(string)
  default     = []
  description = "Comma seperated List of regions for which Activity Log events should be stored or streamed"
  nullable    = false
}

variable "retentionpolicy_days" {
  type        = number
  default     = 0
  description = "Logprofile insights retentionpolicy days that should be deployed."
  nullable    = false
}

variable "retentionpolicy_enabled" {
  type        = bool
  default     = true
  description = "Vaule indicating whether retention policy is enabled"
  nullable    = false
}

variable "service_bus_rule_id" {
  type        = string
  default     = null
  description = "Service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log."
}

variable "storage_account_id" {
  type        = string
  default     = null
  description = "Resource id of the storage account to which you would like to send the Activity Log"
}

# tflint-ignore: terraform_unused_declarations
variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Tags of the resource."
}
