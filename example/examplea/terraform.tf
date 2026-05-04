terraform {
  required_providers {

    tls = {
      version = "3.0.0"
    }

    http = {
      version = "2.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">=0.14.8"
}
