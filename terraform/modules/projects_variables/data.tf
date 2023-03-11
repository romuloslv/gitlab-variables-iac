data "vault_generic_secret" "gitlab_token" {
  path = "kv/secrets/gitlab"
}