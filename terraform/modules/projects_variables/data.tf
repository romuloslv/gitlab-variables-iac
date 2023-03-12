data "vault_generic_secret" "gitlab_token" {
  path = "kv/secrets/gitlab"
}

data "vault_generic_secret" "user_pem" {
  path = "kv/secrets/user"
}