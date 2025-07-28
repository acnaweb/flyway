#!/bin/bash
set -e

if [[ -z "$GCP_PROJECT_ID" || -z "$BIGQUERY_DATASET" || -z "$GOOGLE_APPLICATION_CREDENTIALS" ]]; then
  echo "ERRO: Variáveis obrigatórias não definidas."
  echo "Defina GCP_PROJECT_ID, BIGQUERY_DATASET e GOOGLE_APPLICATION_CREDENTIALS."
  exit 1
fi

echo "Rodando migrations para o projeto: $GCP_PROJECT_ID | dataset: $BIGQUERY_DATASET"
flyway -configFiles=conf/flyway.conf migrate
