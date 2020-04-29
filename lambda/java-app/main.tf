module "ConfirmReverseAuthorizationService" {
  source = "git@github.com:Bancar/terraform-aws-lambda.git?ref=tags/2.16"

  artifact_id                     = var.artifact_id
  artifact_version                = var.artifact_version
  function_description            = var.function_description
  lambda_policy_path              = var.lambda_policy_path
  environment                     = var.environment
  product_bucket                  = var.product_bucket_lambda
  repo_name                       = var.repo_name_lambda
  subnet_ids                      = var.subnet_ids
  security_group_ids              = var.security_group_ids
  dead_letter_queue_name          = var.dead_letter_queue_name
  warm_up_available_environments  = var.warm_up_available_environments

  environment_variables = {

  }

  policy_lambda_vars    = {
    region                    = var.region
    account                   = data.aws_caller_identity.current.account_id
    environment               = var.environment
  }

  tags = var.tags

}