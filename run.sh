#!/bin/zsh

NAME="castopod"

ansible-playbook .ansible/local-start.yml \
  -e MYSQL_DATABASE="${NAME}" \
  -e MYSQL_USER="${NAME}" \
  -e MYSQL_PASSWORD="${NAME}" \
  -e MYSQL_ROOT_PASSWORD="${NAME}" \
  -e CP_ANALYTICS_SALT="${NAME}" \
  -e CP_REDIS_PASSWORD="${NAME}" \
  -e CP_BASEURL="https://${NAME}.test"
