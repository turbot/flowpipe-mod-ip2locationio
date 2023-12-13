pipeline "get_whois_info" {
  title       = "Get WHOIS Information"
  description = "Retrieve WHOIS information for a domain using ip2whois API."

  tags = {
    type = "featured"
  }

  param "cred" {
    type        = string
    description = local.cred_param_description
    default     = "default"
  }

  param "domain" {
    type        = string
    description = "The domain to retrieve WHOIS information for."
  }

  step "http" "get_whois_info" {
    method = "get"
    url    = "https://api.ip2whois.com/v2?key=${credential.ip2location[param.cred].api_key}&domain=${param.domain}"

    request_headers = {
      "Content-Type" = "application/json"
    }
  }

  output "domain" {
    description = "WHOIS information about the domain."
    value       = step.http.get_whois_info.response_body
  }
}
