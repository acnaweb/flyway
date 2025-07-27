#!/bin/bash
set -e

echo "Rodando migrations Flyway para BigQuery..."
flyway -configFiles=conf/flyway.conf migrate
