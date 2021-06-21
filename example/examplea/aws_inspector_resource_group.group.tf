resource "aws_inspector_resource_group" "group" {
  tags       = var.group_tag
  depends_on = [aws_iam_service_linked_role.inspector]
}

variable "group_tag" {
  type = map(any)
  default = {
    Name = "Terraform-aws-inspector"
    Env  = "Test"
  }
}

resource "aws_iam_service_linked_role" "inspector" {
  aws_service_name = "inspector.amazonaws.com"
}
