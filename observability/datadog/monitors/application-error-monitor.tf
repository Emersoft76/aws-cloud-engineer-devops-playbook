terraform {
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "~> 3.0"
    }
  }
}

resource "datadog_monitor" "application_error_rate" {
  name    = "Application Error Rate High"
  type    = "metric alert"
  message = "Application error rate is above acceptable threshold."
  query   = "sum(last_5m):sum:custom.application.errors{service:sample-microservice} > 20"

  monitor_thresholds {
    critical = 20
    warning  = 10
  }

  notify_no_data = false
}
