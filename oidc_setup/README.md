# Instructions for use

This setup folder will create an Azure Storage account, Azure AD service principal with federated credentials, and add the necessary information to your GitHub repository.

To successfully deploy the setup configuration, you'll need to specify the information in the `terraform.tfvars.example` file, and rename it.

You'll also need to authenticate to GitHub, which you can do with a Personal Access Token (PAT) and the environment variable `GITHUB_TOKEN`, or by using the GitHub CLI and running the `gh auth login` command.