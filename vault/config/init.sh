#!/usr/bin/env ash

set -e

vault login token=changeme
vault secrets enable -version=2 kv
vault kv put kv/secrets/gitlab token=changeme

#exec tail -f /dev/null