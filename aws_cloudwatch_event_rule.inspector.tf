resource "aws_cloudwatch_event_rule" "inspector" {
  name        = var.rule["name"]
  description = "Scheduled Inspector Assessment for ${aws_inspector_assessment_template.template.arn}"

  is_enabled          = var.rule["is_enabled"]
  schedule_expression = var.rule["schedule_expression"]
  tags                = var.common_tags
}

resource "aws_cloudwatch_event_target" "inspect" {
  rule      = aws_cloudwatch_event_rule.inspector.name
  target_id = "Amazon_Inspector_Assess"
  arn       = aws_inspector_assessment_template.template.arn
  role_arn  = data.aws_iam_role.inspector.arn
}

data "aws_iam_role" "inspector" {
  name = "AWS_InspectorEvents_Invoke_Assessment_Template"
}
