# gitlab-variables-iac

Terraform module for creating variables in different projects.  
For sensitive values, the vault was used to query the data and save it locally so we can enable confidential/plain text variables.

```
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply -auto-approve"
```