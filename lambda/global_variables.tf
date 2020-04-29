variable "artifact_id" {}

variable "artifact_version" {}

variable "function_description" {}

variable "environment" {
  description = "Environment that is being used"
}

variable "profile" {
}

variable "assume_role_arn" {
  description = "Assume role arn for the aws profile to use for the deployment (should correspond to the environment)"
}

variable "region" {
  description = "The region of the account"
}

variable "bucket_vpc" {
  description = "bucket where vpc tfstate is stored"
}

variable "key_tfstate_vpc" {
  description = "vpc tfstate key"
}

variable "tfstate_lock_table_vpc" {
  description = "vpc tfstate lock table"
}

variable "product_bucket_lambda" {
  description = "bucket of product"
}

variable "repo_name_lambda" {
  description = "repository's name"
}

variable "warm_up_available_environments" {
  type        = list(string)
  description = "Environments where warm up will be created"
  default     = ["STAGE", "PROD"]
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}