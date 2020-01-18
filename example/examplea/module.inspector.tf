module "inspector" {
  source        = "../../"
  common_tags   = var.common_tags
  group_arn     = aws_inspector_resource_group.group.arn
  rule          = var.rule
  template_name = var.template_name
  target_name   = var.target_name
}
