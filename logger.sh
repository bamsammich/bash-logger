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

# function log() {
#   now=$(date '+%Y-%m-%d %H:%M:%S')
#   file_name=$(basename "${BASH_SOURCE[1]}")
#   message="$*"
#   if [[ ! "${message^^}" =~ ^INFO|ERROR|WARN|DEBUG:.* ]]; then
#     message="INFO: ${message}"
#   fi
#   printf "%s [%s::%s] %s\n" "${now}" "${file_name}" "${FUNCNAME[1]}" "${message}"
# }