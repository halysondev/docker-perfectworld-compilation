#!/bin/bash -e

# Habilita a impressão de todos os comandos antes da execução para depuração
set -x

# Instala o Git se necessário
if ! command -v git &>/dev/null; then
  apt-get update && apt-get install -y git
  apt-get clean && rm -rf /var/lib/apt/lists/*
fi

# Configura o Git
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global credential.helper "cache --timeout=3600"

# Clona o repositório privado
  if ! git clone -b "$GIT_BRANCH" --depth 1 "https://x-access-token:$GIT_TOKEN@$GIT_REPO_URL" /PWSource; then
    echo "Erro ao clonar o repositório $GIT_REPO_URL. Verifique se o GIT_TOKEN está correto e se tem permissões adequadas."
    exit 1
  fi

# Executa o make configure se necessário
if [[ -f "/PWSource/Makefile" ]]; then
  (cd /PWSource && make configure) || { echo "Falha ao executar 'make configure'"; exit 1; }
fi

# Remove histórico Git para segurança
rm -rf /PWSource/.git

# Mantém o container em execução. "$@" permite passar comandos adicionais via CMD ou docker run.
exec "$@"