output "rule" {
  value = aws_cloudwatch_event_rule.inspector
}

output "target" {
  value = aws_inspector_assessment_target.target
}

output "template" {
  value = aws_inspector_assessment_template.template
}
