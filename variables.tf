variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "template" {
  description = "Containing duration and rules to run"
}

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
