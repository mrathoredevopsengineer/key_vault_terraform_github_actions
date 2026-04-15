locals {
  resource_prefix = "${var.project_name}-kv"

  common_tags = {
    project = var.project_name
    env     = "dev"
  }
}