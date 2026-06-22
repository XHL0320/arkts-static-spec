/*
 * @id SEM_15_01_002_PASS_target_double_literal
 * @expect compile-pass
 * @section 15.1
 * @design `let x: double = 1` 由目标类型引导字面量类型。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_002_target_double_literal(): void {
  let value: int = 1
  value = value + 1
}

