# Create an alert policy
resource "newrelic_alert_policy" "alert" {
  name = "Your Concise Alert Name"
}

# Add a condition
resource "newrelic_nrql_alert_condition" "foo" {
     count = length(var.name)
    # for_each = var.name
  policy_id                    = newrelic_alert_policy.alert.id
  type                         = var.type
  name                         = var.name[count.index] #each.value
  description                  = var.description
  runbook_url                  = "https://www.example.com"
  enabled                      = true
  violation_time_limit_seconds = var.violation_time_limit_seconds

  nrql {
    query             = "SELECT average(host.cpuPercent) AS 'CPU used %' FROM Metric WHERE `entityGuid` = 'NDAwMzA1OHxJTkZSQXxOQXw5NTc1OTc0MTAzNDQyNTk3MTY'"
  }

  critical {
    operator              = var.operator
    threshold             = var.threshold
    threshold_duration    = var.threshold_duration
    threshold_occurrences = var.threshold_occurrences
  }
}