
resource "aws_inspector_assessment_template" "template" {
  name       = var.template_name
  target_arn = aws_inspector_assessment_target.target.arn
  duration   = var.duration

  rules_package_arns = var.package_arns
}
