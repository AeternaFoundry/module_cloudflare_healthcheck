variable "healthchecks" {
  description = <<EOT
Map of healthchecks, attributes below
Required:
    - address
    - name
    - zone_id
Optional:
    - check_regions
    - consecutive_fails
    - consecutive_successes
    - description
    - http_config
    - interval
    - retries
    - suspended
    - tcp_config
    - timeout
    - type
EOT

  type = map(object({
    address               = string
    name                  = string
    zone_id               = string
    check_regions         = optional(list(string))
    consecutive_fails     = optional(number)
    consecutive_successes = optional(number)
    description           = optional(string)
    http_config = optional(object({
      allow_insecure   = optional(bool)
      expected_body    = optional(string)
      expected_codes   = optional(list(string))
      follow_redirects = optional(bool)
      header           = optional(map(any))
      method           = optional(string)
      path             = optional(string)
      port             = optional(number)
    }))
    interval  = optional(number)
    retries   = optional(number)
    suspended = optional(bool)
    tcp_config = optional(object({
      method = optional(string)
      port   = optional(number)
    }))
    timeout = optional(number)
    type    = optional(string)
  }))
}

