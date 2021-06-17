#!/bin/sh

# patch secret
vault kv patch secret/customer/acme contact_email="admin@acme.com"

# read secret
vault kv get secret/customer/acme


#get version 1
vault kv get -version=1 secret/customer/acme


# get metadata
vault kv metadata get secret/customer/acme
