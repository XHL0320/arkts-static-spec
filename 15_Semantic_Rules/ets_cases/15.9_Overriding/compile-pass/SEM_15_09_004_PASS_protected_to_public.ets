/*
 * @id SEM_15_09_004_PASS_protected_to_public
 * @expect compile-pass
 * @section 15.9
 * @design 访问级别从 protected 放宽为 public。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_09_pass_004_protected_to_public(): void {
  let value: int = 1
  value = value + 1
}

