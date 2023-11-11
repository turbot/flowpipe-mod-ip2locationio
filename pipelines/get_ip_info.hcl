pipeline "get_ip_info" {
  title       = "Get IP Details"
  description = "Retrieve details of an IP address using IP2Location API."

  param "api_key" {
    type        = string
    default     = var.api_key
    description = local.api_key_param_description
  }

  param "ip_address" {
    type        = string
    description = "The IP address to retrieve information for."
  }

  step "http" "get_ip_info" {
    method = "get"
    url    = "https://api.ip2location.io/?key=${param.api_key}&ip=${param.ip_address}"

    request_headers = {
      "Content-Type" = "application/json"
    }
  }

  output "ip_address" {
    description = "Detailed information about the IP address."
    value       = step.http.get_ip_info.response_body
  }
}
