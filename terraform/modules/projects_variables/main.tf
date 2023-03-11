resource "gitlab_project_variable" "projects_variables" {
  for_each = { for i in setproduct(var.projects_ids, var.projects_vars) : "${i[0]}_${i[1].key}" => i }

  project = each.value[0]
  key     = each.value[1].key
  value   = each.value[1].value
}