
variable "group_arn" {
  type        = string
  description = "Contains a tagging map for instances"
  default     = ""
}

variable "template_name" {
  type        = string
  description = "Templates name"
}

variable "rule" {
  description = "Event rule details"
}

variable "target_name" {
  type        = string
  description = "Assessment target name"
}

variable "duration" {
  type = string
}

variable "package_arns" {
  type = list(any)
}
