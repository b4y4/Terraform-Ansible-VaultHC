# export VAULT_ADDR=<add>
# export VAULT_TOKEN=<token>

provider "vault" {
  skip_tls_verify = true
}

provider "vsphere" {
  user                 = data.vault_generic_secret.vmware.data["username"]
  password             = data.vault_generic_secret.vmware.data["password"]
  vsphere_server       = data.vault_generic_secret.vmware.data["hostname"]
  allow_unverified_ssl = true
}
