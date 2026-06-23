/*
 * @id SEM_15_07_00_002_PASS_infer_int_initializer
 * @expect compile-pass
 * @section 15.7
 * @design `let x = 1` 推断为默认整数类型。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_07_pass_001_infer_int_initializer(): void {
  let value: int = 1
  value = value + 1
}

