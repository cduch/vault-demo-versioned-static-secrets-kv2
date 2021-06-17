#!/bin/sh

# create a first secret
vault kv put secret/customer/acme name="ACME Inc." contact_email="jsmith@acme.com"

# create a second version of secret
vault kv put secret/customer/acme name="ACME Inc." contact_email="john.smith@acme.com"

# create a third version of secret
vault kv put secret/customer/acme name="ACME Inc." contact_email="john.smith3@acme.com"

# create a fourth version of secret
vault kv put secret/customer/acme name="ACME Inc." contact_email="john.smith4@acme.com"

# create a fifth version of secret
vault kv put secret/customer/acme name="ACME Inc." contact_email="john.smith5@acme.com"



# read secret
vault kv get secret/customer/acme
