/*
 * @id SEM_15_07_004_PASS_return_same_type
 * @expect compile-pass
 * @section 15.7
 * @design 所有 return 路径类型一致。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_07_pass_004_return_same_type(): void {
  let value: int = 1
  value = value + 1
}

