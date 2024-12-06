script "terraform" "prepare" {
  description = "Prepare the Terraform environment by running terraform init, fmt, and validate"

  job {
    description = "Prepare the Terraform environment by running terraform init, fmt, and validate"
    commands = [
        ["terraform",  "init"], 
        ["terraform", "fmt"], 
        ["terraform", "validate"],
        ["tfsec", "-s", "."]
    ]
  }
}