# gitlab-variables-iac

In your agent vault, put

```
vault secrets enable -version=2 kv
vault kv put kv/gitlab token=changeme
```
