#!/bin/bash

# Instala o Git se necessário
if ! [ -x "$(command -v git)" ]; then
  apt update && apt install -y git
fi

# Configura o Git
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global credential.helper 'cache --timeout=3600'

# Clona o repositório privado
if [[ ! -d "/PWSource/.git" ]]; then
  echo "https://$GIT_TOKEN@$GIT_REPO_URL" > /root/.git-credentials
  git clone -b "$GIT_BRANCH" "https://$GIT_TOKEN@$GIT_REPO_URL" /PWSource
fi

# Executa o make configure se necessário
if [[ -f "/PWSource/Makefile" ]]; then
  cd /PWSource && make configure
fi

rm -Rf /PWSource/.git

# Mantém o container em execução
exec "$@"
