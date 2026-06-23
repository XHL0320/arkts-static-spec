/*
 * @id SEM_15_05_001_PASS_return_covariance
 * @expect compile-pass
 * @section 15.5
 * @design 返回类型允许协变。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_05_pass_001_return_covariance(): void {
  let value: int = 1
  value = value + 1
}

