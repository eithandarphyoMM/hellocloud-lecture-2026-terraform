# Read state from the local frontend-security folder
data "terraform_remote_state" "frontend_security" {
  backend = "local"

  config = {
    path = "${path.module}/../frontend-security/terraform.tfstate"
  }
}

# Read state from the local backend-network folder
data "terraform_remote_state" "network" {
  backend = "local"

  config = {
    path = "${path.module}/../backend-network/terraform.tfstate"
  }
}