pipeline "get_ip_info" {
  title       = "Get IP Information"
  description = "Retrieve details of an IP address using IP2Location API."

  tags = {
    recommended = "true"
  }

  param "conn" {
    type        = connection.ip2locationio
    description = local.conn_param_description
    default     = connection.ip2locationio.default
  }

  param "ip_address" {
    type        = string
    description = "The IP address to retrieve information for."
  }

  step "http" "get_ip_info" {
    method = "get"
    url    = "https://api.ip2location.io/?key=${param.conn.api_key}&ip=${param.ip_address}"

    request_headers = {
      "Content-Type" = "application/json"
    }
  }

  output "ip_address" {
    description = "Detailed information about the IP address."
    value       = step.http.get_ip_info.response_body
  }
}
