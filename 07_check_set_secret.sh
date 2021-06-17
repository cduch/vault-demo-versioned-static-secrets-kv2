#!/bin/sh

# Configure the secrets engine at path secret/ to enable Check-And-Set.
vault write secret/config cas-required=true

# Configure the secret at path secret/partner to enable Check-And-Set.
vault kv metadata put -cas-required=true secret/partner

# initialy it does not exists, so value is 0
vault kv put -cas=0 secret/partner name="Example Co." partner_id="123456789"

# write with version 1
vault kv put -cas=1 secret/partner name="Example Co." partner_id="ABCDEFGHIJKLMN"
