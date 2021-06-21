provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      createdby = "jameswoolfenden"
      module    = "terraform-aws-inspector"
    }
  }
}
