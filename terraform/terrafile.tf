module "projects_variables" {
  source        = "./modules/projects_variables"
  projects_ids  = var.projects_ids
  projects_vars = var.projects_vars
  user_pem      = data.vault_generic_secret.user_pem.data["key"]
  user2_pem     = data.vault_generic_secret.user2_pem.data["key"]
}