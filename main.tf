resource "newrelic_cloud_aws_link_account" "this" {
  name                   = local.stack
  account_id             = var.account_id
  arn                    = var.arn
  metric_collection_mode = var.metric_collection_mode
}
