# Backend
terraform {
  backend "s3" {}
}

# Datasources
data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

#Provider
provider "aws" {
  region = var.region
#  profile = var.profile
#   assume_role {
#     role_arn = var.assume_role_arn
#   }
}