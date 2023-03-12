locals { sensitive_files = [ local_sensitive_file.user_pem, local_sensitive_file.user2_pem ] }

resource "local_sensitive_file" "user_pem" {
  content  = data.vault_generic_secret.user_pem.data.key
  filename = "../secrets/user.pem"
  file_permission = "0600"
}

resource "local_sensitive_file" "user2_pem" {
  content  = data.vault_generic_secret.user2_pem.data.key
  filename = "../secrets/user2.pem"
  file_permission = "0600"
}

resource "gitlab_project_variable" "projects_variables" {
  for_each = { for i in setproduct(var.projects_ids, var.projects_vars) : "${i[0]}_${i[1].key}" => i }

  project = each.value[0]
  key     = each.value[1].key
  value = lower(substr(each.value[1].value, -3, 0)) == "pem" ? join(",", [ for f in local.sensitive_files : f.content if f.filename == each.value[1].value ]) : each.value[1].value

  depends_on = [ local_sensitive_file.user_pem, local_sensitive_file.user2_pem ]
}

resource "null_resource" "delete_file" {
  provisioner "local-exec" { command = "rm -rf ../secrets" }
  depends_on = [ gitlab_project_variable.projects_variables  ]
}