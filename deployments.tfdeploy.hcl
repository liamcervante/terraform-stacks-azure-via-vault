identity_token "vault" {
  audience = [ "vault.workload.identity" ]
}

deployment "example" {
    inputs = {
        identity_token = identity_token.vault.jwt

        vault_address       = "<Replace with your own Vault or HCP Vault cluster address>"
        vault_namespace     = "<Replace with the appropriate Vault namespace, if necessary>"
        vault_role          = "<Replace with your created Vault role for JWT authentication with TFC>"

        azure_subscription_id = "<Replace with your azure subscription ID>"
    }
}
