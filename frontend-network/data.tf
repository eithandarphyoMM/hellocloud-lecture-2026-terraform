# Read state from the local backend-network folder
data "terraform_remote_state" "backend_network" {
  backend = "local"

  config = {
    path = "${path.module}/../backend-network/terraform.tfstate"
  }
}