#!/bin/bash

set -euo pipefail

for dir in workspaces/*
do
    (cd $dir; terraform apply -auto-approve)
done
