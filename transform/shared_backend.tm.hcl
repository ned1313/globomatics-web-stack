sharing_backend "terraform" {
  type     = terraform
  command  = ["terraform", "output", "-json"]
  filename = "shared_output.tf"
}