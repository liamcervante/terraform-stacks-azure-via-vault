

// The vault component connects to vault, and retrieves the dynamic azure credentials.
// These are then referenced in the azure provider in providers.tfstack.hcl.
component "vault" {
    source = "./vault"

    providers = {
        vault = provider.vault.main
    }
}

// Add other components that need the azure provider below here.
