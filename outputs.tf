output "name" {
  description = "The name of the Logprofile"
  value       = azapi_resource.example.name
}

output "resource" {
  description = "This is the full resource output for the Log profile"
  value       = azapi_resource.example
}

output "resource_id" {
  description = "The ID of the Logprofile"
  value       = azapi_resource.example.id
}
