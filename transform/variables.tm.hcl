globals {
  common_variables = {
    location = "eastus"
    prefix   = "devtm"
    suffix   = "01"
    tags = {
      environment = "dev"
      project     = "terramate"
    }
  }
}

generate_hcl "global.auto.tfvars" {
  content {
    location = global.common_variables.location
    prefix   = global.common_variables.prefix
    suffix   = global.common_variables.suffix
    tags     = global.common_variables.tags
  }
}