locals {
  resource_prefix = "${var.project_name}-kv"
  project_name    = var.project_name
  environment       = "dev"

  common_tags = {
    project = var.project_name
    env     = "dev"
  }
}