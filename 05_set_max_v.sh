#!/bin/sh


# specifiy max versions
vault kv metadata put -max-versions=4 secret/customer/acme

# get metadata
vault kv metadata get secret/customer/acme