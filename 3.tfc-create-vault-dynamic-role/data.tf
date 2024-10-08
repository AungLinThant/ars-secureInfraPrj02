data "terraform_remote_state" "vault-admin" {
  backend = "remote"

  config = {
    organization = "ars_SecureInfraProject02"
    workspaces = {
      name = "tfc-create-vault-dynamic-role"
    }
  }
}


data "vault_aws_access_credentials" "master_iamadmin_creds" {
  backend = vault_aws_secret_backend.aws.path
  role    = vault_aws_secret_backend_role.iam_admin_dynamic_role.name
}