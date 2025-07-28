#!/bin/bash
set -e

mkdir -p ~/.flyway
curl -L https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/9.16.0/flyway-commandline-9.16.0-linux-x64.tar.gz | tar xz -C ~/.flyway
sudo ln -s ~/.flyway/flyway /usr/local/bin/flyway
