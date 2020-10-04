variable "stage" {
  description = "Deployment stage"
}

variable "api_name" {
  type = string
}

variable "api_path" {
  description = "root resource path"
  type        = string
}

variable "validate_request_body" {
  type    = bool
  default = true
}

variable "validate_request_parameters" {
  type    = bool
  default = false
}

variable "create_root_resource" {
  type    = bool
  default = true
}
