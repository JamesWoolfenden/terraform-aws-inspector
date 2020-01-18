resource "aws_inspector_assessment_target" "target" {
  name               = var.target_name
  resource_group_arn = var.group_arn
}
