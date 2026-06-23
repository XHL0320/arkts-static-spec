/*
 * @id SEM_15_01_00_005_PASS_string_plus_int
 * @expect compile-pass
 * @section 15.1
 * @design `"x" + 1` 触发字符串转换。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_005_string_plus_int(): void {
  let value: int = 1
  value = value + 1
}

