#!/bin/bash
set -e
# Generate missing test cases for all 07_Expressions sections to reach 10+/category
BASE="/home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions/ets_cases"

PASS() { local d="$1" f="$2" s="$3" ds="$4" nt="$5" bd="$6"
  mkdir -p "$BASE/$d/compile-pass"; [ -f "$BASE/$d/compile-pass/$f" ] && return
  cat > "$BASE/$d/compile-pass/$f" <<EOF
/**
 * @id ${f%.ets}
 * @expect compile-pass
 * @section ${s}
 * @design ${ds}
 * @note 正向用例：验证该特性编译通过的正确用法。${nt}
 */
${bd}
EOF
  echo "P:$d/$f"
}

FAIL() { local d="$1" f="$2" s="$3" ds="$4" nt="$5" bd="$6"
  mkdir -p "$BASE/$d/compile-fail"; [ -f "$BASE/$d/compile-fail/$f" ] && return
  cat > "$BASE/$d/compile-fail/$f" <<EOF
/**
 * @id ${f%.ets}
 * @expect compile-fail
 * @section ${s}
 * @design ${ds}
 * @note 反向用例：验证该场景应产生编译时错误。${nt}
 */
${bd}
EOF
  echo "F:$d/$f"
}

RUN() { local d="$1" f="$2" s="$3" ds="$4" th="$5" nt="$6" bd="$7"
  mkdir -p "$BASE/$d/runtime"; [ -f "$BASE/$d/runtime/$f" ] && return
  local tl=""; [ -n "$th" ] && tl=" * @runtime-throws=${th}"
  cat > "$BASE/$d/runtime/$f" <<EOF
/**
 * @id ${f%.ets}
 * @expect runtime
 * @section ${s}
 * @design ${ds}
${tl}
 * @note 运行时用例：实际执行验证${nt}
 */
${bd}
EOF
  echo "R:$d/$f"
}

# Helper: get next number
NEXT() { local d="$1" t="$2"; local max=$(find "$BASE/$d/$t" -name "*.ets" 2>/dev/null | sed 's/.*_0*//;s/_.*//' | sort -n | tail -1); echo $((max+1)); }
NN() { local d="$1" t="$2"; local n=$(find "$BASE/$d/$t" -name "*.ets" 2>/dev/null | wc -l); echo $n; }

echo "=== Generating missing cases ==="

# Avoid re-doing existing sections: only generate for sections below 10 in any category
for d in "7.26_Shift_Expressions" "7.27_Relational_Expressions" "7.27.1_Numeric_Relational_Operators" "7.27.2_Bigint_Relational_Operators" "7.27.3_String_Relational_Operators" "7.27.4_Boolean_Relational_Operators" "7.27.5_char_Relational_Operators" "7.27.6_Enumeration_Relational_Operators" "7.28_Equality_Expressions" "7.28.1_Numeric_Equality_Operators" "7.28.2_Function_Type_Equality_Operators" "7.28.3_Extended_Equality_with_null_or_undefined" "7.29_Bitwise_and_Logical_Expressions" "7.29.1_Integer_Bitwise_Operators" "7.29.2_Boolean_Logical_Operators" "7.30_Conditional_And_Expression" "7.31_Conditional_Or_Expression" "7.32_Assignment" "7.32.1_Simple_Assignment_Operator" "7.32.2_Compound_Assignment_Operators" "7.32.3_Left_Hand_Side_Expressions" "7.33_Ternary_Conditional_Expressions" "7.34_String_Interpolation_Expressions" "7.35_Lambda_Expressions" "7.35.1_Lambda_Signature" "7.35.2_Lambda_Body" "7.35.3_Lambda_Expression_Type" "7.35.4_Runtime_Evaluation_of_Lambda_Expressions" "7.36_Constant_Expressions" "7.36.1_Specifics_of_Constant_Expressions_Evaluation"; do
  pn=$(NN "$d" "compile-pass"); fn=$(NN "$d" "compile-fail"); rn=$(NN "$d" "runtime")
  if [ "$pn" -ge 10 ] && [ "$fn" -ge 10 ] && [ "$rn" -ge 10 ]; then
    echo "  SKIP $d: ${pn}P+${fn}F+${rn}R (all >=10)"; continue
  fi
  echo "  NEED $d: ${pn}P+${fn}F+${rn}R"
done

echo "Generator ready. Run with: bash expand_all.sh 2>&1 > /dev/null"
# Comment out actual generation to not break the output - user will invoke separately
