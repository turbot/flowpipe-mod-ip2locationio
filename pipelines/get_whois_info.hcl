pipeline "get_whois_info" {
  title       = "Get WHOIS Information"
  description = "Retrieve WHOIS information for a domain using ip2whois API."

  param "api_key" {
    type        = string
    default     = var.api_key
    description = "API key for accessing ip2whois API."
  }

  param "domain" {
    type        = string
    description = "The domain to retrieve WHOIS information for."
  }

  step "http" "get_whois_info" {
    method = "get"
    url    = "https://api.ip2whois.com/v2?key=${param.api_key}&domain=${param.domain}"

    request_headers = {
      "Content-Type" = "application/json"
    }
  }

  output "domain" {
    description = "WHOIS information about the domain."
    value       = step.http.get_whois_info.response_body
  }
}
