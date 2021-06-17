#!/bin/sh
#stop and remove vault containers if already running

docker stop vault-demo-vault
docker rm vault-demo-vault

docker network rm dev-network

#start Vault in dev mode on port 8200
docker network create dev-network

docker run --name vault-demo-vault --network dev-network -p 8200:8200 hashicorp/vault-enterprise:1.7.3_ent server -dev -dev-root-token-id="root" &

# login with root token
vault login root

#write Vault Enterprise License (assuming it's already in a ENV Variable)
vault write sys/license text="${VAULT_LICENSE}"