resource "cloudflare_healthcheck" "healthchecks" {
  for_each = var.healthchecks

  address               = each.value.address
  name                  = each.value.name
  zone_id               = each.value.zone_id
  check_regions         = each.value.check_regions
  consecutive_fails     = each.value.consecutive_fails
  consecutive_successes = each.value.consecutive_successes
  description           = each.value.description
  http_config           = each.value.http_config
  interval              = each.value.interval
  retries               = each.value.retries
  suspended             = each.value.suspended
  tcp_config            = each.value.tcp_config
  timeout               = each.value.timeout
  type                  = each.value.type
}

