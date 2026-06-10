#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CASE_ROOT="${SCRIPT_DIR}/ets_cases"

# TODO: replace with the local ArkTS static compiler command.
# Example:
#   find "${CASE_ROOT}" -name '*.ets' -print0 | xargs -0 -n1 arktsc

echo "Case root: ${CASE_ROOT}"
echo "No runner configured yet. Fill in compiler/test command before execution."