/*
 * @id SEM_15_04_005_PASS_explicit_cast_assignment
 * @expect compile-pass
 * @section 15.4
 * @design 显式 cast 后再赋值。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_pass_005_explicit_cast_assignment(): void {
  let value: int = 1
  value = value + 1
}

