globals {
  input_variables = {
    prefix   = "devtm"
    suffix   = "02"
    location = "East US"
    tags = {
      environment = "dev"
      project     = "terramate"
    }
  }
}

generate_hcl "global.auto.tfvars" {
  content {
    prefix   = global.input_variables.prefix
    suffix   = global.input_variables.suffix
    location = global.input_variables.location
    tags     = global.input_variables.tags
  }
}