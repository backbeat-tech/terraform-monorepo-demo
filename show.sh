#!/bin/bash

set -euo pipefail

for dir in workspaces/*
do
    echo "Resources in $dir"
    cat $dir/*.txt
done
