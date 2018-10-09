#!/bin/sh
set -e

path=$(dirname $0)

cd $path
bosh create-release --force

bosh upload-release

bosh -d tinc deploy manifests/tinc-dev-local.yml -n 
