terraform {
  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "~> 3.0"
    }
  }
}

resource "datadog_monitor" "kubernetes_cpu_high" {
  name    = "Kubernetes CPU High"
  type    = "metric alert"
  message = "Kubernetes CPU usage is above threshold on the platform."
  query   = "avg(last_5m):avg:kubernetes.cpu.usage.total{*} > 80"

  monitor_thresholds {
    critical = 80
    warning  = 70
  }

  notify_no_data = false
}
