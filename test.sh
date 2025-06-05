#!/usr/bin/env bash
set -euo pipefail
terraform fmt -check main.tf outputs.tf variables.tf
terraform init -backend=false
terraform validate
