#!/usr/bin/env ash

set -e

vault login token=changeme
vault secrets enable -version=2 kv
vault kv put kv/secrets/gitlab token=changeme
vault kv put kv/secrets/user key=@/config/user.pem
vault kv put kv/secrets/user2 key=@/config/user2.pem

#exec tail -f /dev/null