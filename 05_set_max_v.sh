#!/bin/sh


# specifiy max versions
vault kv metadata put -max-versions=4 secret/customer/acme

# get metadata
vault kv metadata get secret/customer/acme

# create a first secret
vault kv put secret/customer/acme name="ACME Inc." contact_email="jsmith@acme.com"

# get metadata
vault kv metadata get secret/customer/acme
