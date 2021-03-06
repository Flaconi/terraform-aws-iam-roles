output "policies" {
  description = "Created customer managed IAM policies"
  value       = module.aws_iam.policies
}

output "roles" {
  description = "Created roles"
  value       = module.aws_iam.roles
}

output "providers_saml" {
  description = "Created SAML providers."
  value       = module.aws_iam.providers_saml
}
