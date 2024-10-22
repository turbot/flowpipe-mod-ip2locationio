pipeline "get_whois_info" {
  title       = "Get WHOIS Information"
  description = "Retrieve WHOIS information for a domain using ip2whois API."

  tags = {
    recommended = "true"
  }

   param "conn" {
    type        = connection.ip2locationio
    description = local.conn_param_description
    default     = connection.ip2locationio.default
  }

  param "domain" {
    type        = string
    description = "The domain to retrieve WHOIS information for."
  }

  step "http" "get_whois_info" {
    method = "get"
    url    = "https://api.ip2whois.com/v2?key=${param.conn.api_key}&domain=${param.domain}"

    request_headers = {
      "Content-Type" = "application/json"
    }
  }

  output "domain" {
    description = "WHOIS information about the domain."
    value       = step.http.get_whois_info.response_body
  }
}
