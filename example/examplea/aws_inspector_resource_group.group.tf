resource "aws_inspector_resource_group" "group" {
  tags = var.group_tag
}

variable "group_tag" {
  type = map(any)
  default = {
    Name = "foo"
    Env  = "bar"
  }
}
