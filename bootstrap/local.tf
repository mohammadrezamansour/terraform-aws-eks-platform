locals {
  default_tags = {
    ManagedBy   = "Terraform"
    Environment = var.environment
  }

  common_tags = merge(local.default_tags, var.tags)
}