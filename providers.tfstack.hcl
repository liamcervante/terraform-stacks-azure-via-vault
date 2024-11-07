required_providers {
  vault = {
    source = "hashicorp/vault"
    version = "4.4.0"
  }
  azurerm = {
    source = "hashicorp/azurerm"
    version = "4.8.0"
  }
}

provider "vault" "main" {
    config {
        skip_child_token = true
        address = var.vault_address
        namespace = var.vault_namespace

        auth_login_jwt {
            jwt = var.identity_token
            role = var.vault_role
        }
    }
}

provider "azurerm" "main" {
    config {
        features {}

        use_cli = false
        client_id = component.vault.azure_client_id
        client_secret = component.vault.azure_client_secret
        subscription_id = var.azure_subscription_id
    }
}
