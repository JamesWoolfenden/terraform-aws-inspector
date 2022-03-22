terraform {
  required_providers {
    aws = {
      version = "4.6.0"
      source  = "hashicorp/aws"
    }

    tls = {
      version = "3.0.0"
    }

    http = {
      version = "2.0.0"
    }
  }
  required_version = ">=0.14.8"
}
