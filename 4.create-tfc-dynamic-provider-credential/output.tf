output "bound_claims" {
  description = "Vault JWT Auth Backend Role's bound_claim"
  value       = vault_jwt_auth_backend_role.jwt-role.bound_claims
}

output "role_name" {
  description = "Name of the vault role for trust relationship"
  value       = vault_jwt_auth_backend_role.jwt-role.role_name
}