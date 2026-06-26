#!/bin/bash
# run_interfaces_cases_wsl.sh - Run all Chapter 10 Interfaces test cases

ES2PANDA=~/arkcompiler/runtime_core/static_core/out/bin/es2panda
ARK=~/arkcompiler/runtime_core/static_core/out/bin/ark
BOOT_PANDA=~/arkcompiler/runtime_core/static_core/out/pandastdlib/arkstdlib.abc
BOOT_ETS=~/arkcompiler/runtime_core/static_core/out/plugins/ets/etsstdlib.abc
ARKTSCONFIG=~/arkcompiler/runtime_core/static_core/out/bin/arktsconfig.json
# Auto-resolve script directory for portability (no hardcoded paths)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="${SCRIPT_DIR}"
PASS_COUNT=0; FAIL_COUNT=0; TOTAL_COUNT=0

run_compile_pass() {
    local file=$1 id=$2
    local output=$($ES2PANDA --arktsconfig=$ARKTSCONFIG --extension=ets --output=/tmp/test.abc "$file" 2>&1)
    if echo "$output" | grep -qE "Syntax error|Semantic error|Fatal error"; then
        echo "  FAIL: $id - compile failed"; return 1
    fi
    echo "  PASS: $id"; return 0
}

run_compile_fail() {
    local file=$1 id=$2
    local output=$($ES2PANDA --arktsconfig=$ARKTSCONFIG --extension=ets --output=/tmp/test.abc "$file" 2>&1)
    if echo "$output" | grep -qE "Syntax error|Semantic error"; then
        echo "  PASS: $id - compile error as expected"; return 0
    fi
    echo "  FAIL: $id - expected compile error but compiled OK"; return 1
}

run_runtime() {
    local file=$1 id=$2
    local module_name=$(basename "$file" .ets)
    local entry_point="${module_name}/ETSGLOBAL::main"
    local output=$($ES2PANDA --arktsconfig=$ARKTSCONFIG --extension=ets --output=/tmp/test.abc "$file" 2>&1)
    if echo "$output" | grep -qE "Syntax error|Semantic error|Fatal error"; then
        echo "  FAIL: $id - compile failed"; return 1
    fi
    $ARK --load-runtimes=ets --boot-panda-files="$BOOT_PANDA:$BOOT_ETS" /tmp/test.abc "$entry_point" > /tmp/runtime_out.txt 2>&1
    local rc=$?
    if [ $rc -eq 0 ]; then echo "  PASS: $id - runtime OK"; return 0
    else echo "  FAIL: $id - runtime exit code $rc"; cat /tmp/runtime_out.txt; return 1; fi
}

process_section() {
    local section=$1
    local dir="$BASE_DIR/ets_cases/$section"
    echo "=== Section: $section ==="
    for f in "$dir/compile-pass"/*.ets; do [ -f "$f" ] || continue
        TOTAL_COUNT=$((TOTAL_COUNT+1)); local id=$(basename "$f" .ets)
        run_compile_pass "$f" "$id" && PASS_COUNT=$((PASS_COUNT+1)) || FAIL_COUNT=$((FAIL_COUNT+1))
    done
    for f in "$dir/compile-fail"/*.ets; do [ -f "$f" ] || continue
        TOTAL_COUNT=$((TOTAL_COUNT+1)); local id=$(basename "$f" .ets)
        run_compile_fail "$f" "$id" && PASS_COUNT=$((PASS_COUNT+1)) || FAIL_COUNT=$((FAIL_COUNT+1))
    done
    for f in "$dir/runtime"/*.ets; do [ -f "$f" ] || continue
        TOTAL_COUNT=$((TOTAL_COUNT+1)); local id=$(basename "$f" .ets)
        run_runtime "$f" "$id" && PASS_COUNT=$((PASS_COUNT+1)) || FAIL_COUNT=$((FAIL_COUNT+1))
    done
}

cd "$BASE_DIR"
if [ -n "$SECTIONS" ]; then
    IFS=',' read -ra LIST <<< "$SECTIONS"
    for s in "${LIST[@]}"; do process_section "$s"; done
else
    for d in ets_cases/*/; do process_section "$(basename "$d")"; done
fi
echo "Total: $TOTAL_COUNT, Pass: $PASS_COUNT, Fail: $FAIL_COUNT"
