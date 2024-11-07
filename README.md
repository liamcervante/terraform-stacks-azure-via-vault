# Connect to Azure via Vault from Stacks

1. Configure Azure credential management with Vault: https://developer.hashicorp.com/vault/tutorials/secrets-management/azure-secrets
2. Configure Vault to trust Terraform.
  - Complete only the Configure Vault section of this tutorial (the rest is not needed): https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials/vault-configuration#configure-vault
  - You must change the `sub` `bound_claims` to something like "organization:my-org-name:project:my-project-name:stack:my-stack-name:deployment:*" so that it works with Stacks instead of workspaces.
3. Update vault/main.tf so that it reads from the correct path you set up in step 2.
4. Update deployments.tfdeploy.hcl with the relevant details.
5. Hopefully it works now!
