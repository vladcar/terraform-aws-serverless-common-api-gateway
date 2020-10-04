output "parent_resource_id" {
  value = var.create_root_resource ? aws_api_gateway_resource.root_resource[0].id : null
}

output "rest_api_id" {
  value = aws_api_gateway_rest_api.api.id
}

output "api_request_validator_id" {
  value = aws_api_gateway_request_validator.validator.id
}

output "api_gateway_root_resource_id" {
  value = aws_api_gateway_rest_api.api.root_resource_id
}
