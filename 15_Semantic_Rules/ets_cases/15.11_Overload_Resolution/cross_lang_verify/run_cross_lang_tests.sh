#!/usr/bin/env bash
set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PASS=0; FAIL=0
SWIFT=/opt/swift/usr/bin/swift

echo "=========================================="
echo "15.11 Overload Resolution - Cross Language Verification"
echo "=========================================="

echo "--- Java Tests ---"
echo -n "  Compiling SEM_15_11_Overload.java... "
if javac SEM_15_11_Overload.java 2>/dev/null; then
    echo -n "Running... "
    if java SEM_15_11_Overload 2>&1; then echo "  PASS"; PASS=$((PASS+1))
    else echo "  FAIL (runtime)"; FAIL=$((FAIL+1)); fi
else echo "  FAIL (compile)"; FAIL=$((FAIL+1)); fi

echo "--- Swift Tests ---"
echo -n "  Running SEM_15_11_Overload.swift... "
if $SWIFT SEM_15_11_Overload.swift 2>&1; then echo "  PASS"; PASS=$((PASS+1))
else echo "  FAIL"; FAIL=$((FAIL+1)); fi

echo "=========================================="
echo "Total: $((PASS+FAIL))  Pass: ${PASS}  Fail: ${FAIL}"
echo "=========================================="
if [ "$FAIL" -gt 0 ]; then exit 1; fi
