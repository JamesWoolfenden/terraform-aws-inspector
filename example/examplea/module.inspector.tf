module "inspector" {
  source         = "../../"
  group_arn      = aws_inspector_resource_group.group.arn
  rule           = var.rule
  template_name  = var.template_name
  target_name    = var.target_name
  duration       = var.duration
  inspector_role = aws_iam_service_linked_role.inspector
  package_arns   = data.aws_inspector_rules_packages.rules.arns
}
