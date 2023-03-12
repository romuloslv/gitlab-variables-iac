provider "gitlab" {
  token    = data.vault_generic_secret.gitlab_token.data.token
  base_url = "https://gitlab.com/api/v4/"
}

provider "vault" {
  address = "http://localhost:8200"
  token   = "changeme"
}