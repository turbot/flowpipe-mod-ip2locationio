pipeline "get_ip" {
  title       = "Get IP Details"
  description = "Retrieve details of an IP address using ip2location API."

  param "api_key" {
    type        = string
    default     = var.api_key
    description = "API key for accessing ip2location API."
  }

  param "ip_address" {
    type        = string
    description = "The IP address to retrieve information for."
  }

  step "http" "get_ip" {
    method = "get"
    url    = "https://api.ip2location.io/?key=${param.api_key}&ip=${param.ip_address}"

    request_headers = {
      "Content-Type" = "application/json"
    }
  }

  output "ip_details" {
    description = "Detailed information about the IP address."
    value       = step.http.get_ip.response_body
  }
}
