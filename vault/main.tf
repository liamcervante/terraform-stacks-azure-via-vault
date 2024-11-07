
data "vault_generic_secret" "azure_credentials" {
    path = "<Replace with Vault azure role (eg. azure/creds/stacks)>"
}

output "azure_client_id" {
    value = data.vault_generic_secret.azure_credentials.data.client_id
}

output "azure_client_secret" {
    value = data.vault_generic_secret.azure_credentials.data.client_secret
}
