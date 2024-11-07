variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "vault_address" {
  type = string
  description = "The address for your Vault or HCP Vault cluster, e.g. https://vault-cluster.vault.<uuid>.aws.hashicorp.cloud:8200"
}

variable "vault_namespace" {
  type = string
  description = "The Vault namespace used, if necessary. For HCP Vault, a namespace is required and automatically created as 'admin'. See https://developer.hashicorp.com/vault/tutorials/cloud-ops/hcp-vault-namespace-considerations#hcp-vault-admin-namespace"
}

variable "vault_role" {
  type = string
  description = "The Vault role you created for JWT authentication with TFC"
}

variable "azure_subscription_id" {
    type = string
    description = "The Azure subscription you want to connect to."
}
