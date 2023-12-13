pipeline "get_ip_info" {
  title       = "Get IP Information"
  description = "Retrieve details of an IP address using IP2Location API."

  tags = {
    type = "featured"
  }

  param "cred" {
    type        = string
    description = local.cred_param_description
    default     = "default"
  }

  param "ip_address" {
    type        = string
    description = "The IP address to retrieve information for."
  }

  step "http" "get_ip_info" {
    method = "get"
    url    = "https://api.ip2location.io/?key=${credential.ip2locationio[param.cred].api_key}&ip=${param.ip_address}"

    request_headers = {
      "Content-Type" = "application/json"
    }
  }

  output "ip_address" {
    description = "Detailed information about the IP address."
    value       = step.http.get_ip_info.response_body
  }
}
