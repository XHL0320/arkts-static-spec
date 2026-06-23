/*
 * @id SEM_15_01_00_001_PASS_standalone_int_literal
 * @expect compile-pass
 * @section 15.1
 * @design `let x = 1` 使用整数字面量默认类型。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_001_standalone_int_literal(): void {
  let value: int = 1
  value = value + 1
}

