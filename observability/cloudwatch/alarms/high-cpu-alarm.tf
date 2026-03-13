resource "aws_cloudwatch_metric_alarm" "ecs_high_cpu" {
  alarm_name          = "enterprise-ecs-high-cpu"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm when ECS CPU exceeds 80%"
  dimensions = {
    ClusterName = "enterprise-ecs"
  }
}
