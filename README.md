# gitlab-variables-iac

Terraform module for creating variables in different projects.  
For sensitive values, we use the vault to query the data and save it locally, so we can enable sensitive/plaintext variables.

```
terraform apply -auto-approve -var="extension=pem"
```

p.s: on failure, retry the command