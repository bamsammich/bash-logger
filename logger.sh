#!/usr/bin/env bash

_logger::timestamp() {
 echo "$(date '+%Y-%m-%d %H:%M:%S')"
}
_logger::source_file() {
  echo "$(basename "${BASH_SOURCE[2]}")"
}
logger::info() {
  printf "%s [%s] %s: %s\n" \
    "$(logger::timestamp)" \
    "$(logger::source_file)" \
    "INFO" \
    "$@"
}

if [[ ${BASH_SOURCE[0]} != $0 ]]; then
  export -f logger
else
  logger::info "${@}"
  exit $?
fi
