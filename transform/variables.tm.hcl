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
    prefix   = globals.input_variables.prefix
    suffix   = globals.input_variables.suffix
    location = globals.input_variables.location
    tags     = globals.input_variables.tags
  }
}