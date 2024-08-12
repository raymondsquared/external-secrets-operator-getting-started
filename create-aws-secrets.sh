#!/bin/bash

aws secretsmanager create-secret \
  --name eso-getting-started \
  --secret-string '{ "name": "Raymond", "year": 2030 }' \
  --description "A secret containing a random JSON object"
