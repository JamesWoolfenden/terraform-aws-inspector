variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "template_name" {
  type    = string
  default = "Assessment-Template-Default"
}

variable "rule" {
  default = {
    name                = "Amazon_Inspector_Assessment_0"
    is_enabled          = true
    schedule_expression = "rate(7 days)"
  }
}

variable "target_name" {
  type        = string
  default     = "Assessment-Target-All-Instances"
  description = "Assessment target name"
}

variable "template" {
  description = "Containing duration and rules to run"
}

variable "duration" {
  type = string
}
