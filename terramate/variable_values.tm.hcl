generate_hcl "global.auto.tfvars" {
  content {
    prefix   = global.terraform.stack.values.prefix
    suffix   = global.terraform.stack.values.suffix
    location = global.terraform.stack.values.location
    tags     = global.terraform.stack.values.tags
  }
}