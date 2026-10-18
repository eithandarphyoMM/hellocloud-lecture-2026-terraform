# Read state from the local backend-network folder
data "terraform_remote_state" "network" {
  backend = "local"

  config = {
    # Adjust this relative path based on your actual folder structure.
    # Assuming fe-compute and backend-network are side-by-side in the same parent directory:
    path = "${path.module}/../backend-network/terraform.tfstate"
  }
}

# Read state from the local backend-security folder
data "terraform_remote_state" "security" {
  backend = "local"

  config = {
    path = "${path.module}/../backend-security/terraform.tfstate"
  }
}
