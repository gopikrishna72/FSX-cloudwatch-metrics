output "sns_topic_arn" {
  description = "The ARN of the SNS topic."
  value       = aws_sns_topic.fsx_health_sns_topic.arn
}

output "role_arn" {
  description = "The ARN of the IAM role."
  value       = aws_iam_role.fsx_health_lambda_role.arn
}

output "cloudwatch_metric_alarm_arns" {
  description = "A map consisting of FSx filesystem identifiers and their CloudWatch metric alarm ARNs."
  value       = { for k, v in aws_cloudwatch_metric_alarm.this : k => v.arn }
}
