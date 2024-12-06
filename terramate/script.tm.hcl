script "terraform" "ci_check" {
  description = "Prepare the Terraform environment by running terraform init, fmt, and validate"

  job {
    description = "Prepare the Terraform environment by running terraform init, fmt, and validate"
    commands = [
      ["terraform", "init", "-backend=false"],
      ["terraform", "fmt"],
      ["terraform", "validate"],
      ["tfsec", "-s", "."]
    ]
  }
}