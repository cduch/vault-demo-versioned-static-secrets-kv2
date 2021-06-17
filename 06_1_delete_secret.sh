#!/bin/sh


# delete versions of secrets
vault kv delete -versions="4,5" secret/customer/acme