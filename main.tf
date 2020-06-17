######################################################
# ############### API Gateway ########################
# creates root api resource (/)
# create only one instance of this module per service
######################################################

resource "aws_api_gateway_rest_api" "api" {
  name = var.api_name
}

resource "aws_api_gateway_resource" "root_resource" {
  path_part   = var.api_path
  parent_id   = aws_api_gateway_rest_api.api.root_resource_id
  rest_api_id = aws_api_gateway_rest_api.api.id
}

# request_models must be provided for methods
resource "aws_api_gateway_request_validator" "validator" {
  name                        = "${var.api_name}-validator-${var.stage}"
  rest_api_id                 = aws_api_gateway_rest_api.api.id
  validate_request_body       = var.validate_request_body
  validate_request_parameters = var.validate_request_parameters
}
