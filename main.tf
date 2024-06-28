resource "azapi_resource" "example" {
  type = "Microsoft.Insights/logprofiles@2016-03-01"
  body = {
    properties = {
      categories = var.categories

      locations = var.locations

      retentionPolicy = {
        days    = var.retentionpolicy_days
        enabled = var.retentionpolicy_enabled
      }
      serviceBusRuleId = var.service_bus_rule_id
      storageAccountId = var.storage_account_id
    }
  }
  location  = var.location
  name      = var.name
  parent_id = "/subscriptions/${var.subscription_id}"
  tags      = var.tags
}
