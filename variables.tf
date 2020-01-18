variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "template" {
  description = "Containing dureation and rules to run"
  default = {
    duration = 3600
    rules_package_arns = [
      "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-sJBhCr0F",
      "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-ubA5XvBh",
      "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SPzU33xe",
    "arn:aws:inspector:eu-west-1:357557129151:rulespackage/0-SnojL3Z6"]
  }
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
