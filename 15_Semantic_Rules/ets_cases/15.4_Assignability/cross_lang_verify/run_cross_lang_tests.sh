#!/usr/bin/env bash
set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PASS=0; FAIL=0
SWIFT=/opt/swift/usr/bin/swift

echo "=========================================="
echo "15.4 Assignability - Cross Language Verification"
echo "=========================================="

echo "--- Java ---"
echo -n "  Compiling SEM_15_04_Assignability.java... "
rm -f *.class 2>/dev/null
if javac SEM_15_04_Assignability.java 2>/dev/null; then
    echo -n "Running... "
    if java SEM_15_04_Assignability 2>&1; then echo "  PASS"; PASS=$((PASS+1))
    else echo "  FAIL (runtime)"; FAIL=$((FAIL+1)); fi
else echo "  FAIL (compile)"; FAIL=$((FAIL+1)); fi

echo "--- Swift ---"
echo -n "  Running SEM_15_04_Assignability.swift... "
if $SWIFT SEM_15_04_Assignability.swift 2>&1; then echo "  PASS"; PASS=$((PASS+1))
else echo "  FAIL"; FAIL=$((FAIL+1)); fi

echo "=========================================="
echo "Total: $((PASS+FAIL))  Pass: ${PASS}  Fail: ${FAIL}"
echo "=========================================="
if [ "$FAIL" -gt 0 ]; then exit 1; fi
