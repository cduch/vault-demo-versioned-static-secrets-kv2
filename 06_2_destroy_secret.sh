#!/bin/sh

# undelete because destroyed parameter wasn't set
vault kv undelete -versions=5 secret/customer/acme

# destroy secret version
vault kv destroy -versions=4 secret/customer/acme
