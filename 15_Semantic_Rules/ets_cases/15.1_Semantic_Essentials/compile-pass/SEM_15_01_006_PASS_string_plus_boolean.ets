/*
 * @id SEM_15_01_006_PASS_string_plus_boolean
 * @expect compile-pass
 * @section 15.1
 * @design `"x" + true` 触发字符串转换。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_006_string_plus_boolean(): void {
  let value: int = 1
  value = value + 1
}

