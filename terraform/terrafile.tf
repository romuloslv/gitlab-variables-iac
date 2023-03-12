module "projects_variables" {
  source        = "./modules/projects_variables"
  projects_ids  = var.projects_ids
  projects_vars = var.projects_vars
}