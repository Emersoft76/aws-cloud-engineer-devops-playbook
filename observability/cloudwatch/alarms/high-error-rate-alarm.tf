resource "aws_cloudwatch_metric_alarm" "alb_5xx_errors" {
  alarm_name          = "enterprise-alb-5xx-errors"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "HTTPCode_ELB_5XX_Count"
  namespace           = "AWS/ApplicationELB"
  period              = 300
  statistic           = "Sum"
  threshold           = 10
  alarm_description   = "Alarm when ALB 5XX errors exceed threshold"
  dimensions = {
    LoadBalancer = "app/enterprise-alb/1234567890abcdef"
  }
}
