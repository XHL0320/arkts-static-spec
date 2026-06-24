#!/usr/bin/env bash
# 15.8 Smart Casts - 跨语言验证脚本
set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

PASS=0
FAIL=0
SWIFT=/opt/swift/usr/bin/swift

echo "=========================================="
echo "15.8 Smart Casts - Cross Language Verification"
echo "=========================================="
echo ""

# Java tests
echo "--- Java Tests ---"
echo -n "  Compiling SEM_15_08_Smart_Casts.java... "
if javac SEM_15_08_Smart_Casts.java 2>/dev/null; then
    echo -n "Running... "
    if java SEM_15_08_Smart_Casts 2>&1; then
        echo "  PASS  SEM_15_08_Smart_Casts.java"
        PASS=$((PASS + 1))
    else
        echo "  FAIL  SEM_15_08_Smart_Casts.java (runtime error)"
        FAIL=$((FAIL + 1))
    fi
else
    echo "  FAIL  SEM_15_08_Smart_Casts.java (compile error)"
    FAIL=$((FAIL + 1))
fi

echo ""

# Swift tests
echo "--- Swift Tests ---"
echo -n "  Running SEM_15_08_Smart_Casts.swift... "
if $SWIFT SEM_15_08_Smart_Casts.swift 2>&1; then
    echo "  PASS  SEM_15_08_Smart_Casts.swift"
    PASS=$((PASS + 1))
else
    echo "  FAIL  SEM_15_08_Smart_Casts.swift"
    FAIL=$((FAIL + 1))
fi

echo ""
echo "=========================================="
echo "Total: $((PASS + FAIL))  Pass: ${PASS}  Fail: ${FAIL}"
echo "=========================================="

if [ "$FAIL" -gt 0 ]; then
    exit 1
fi
