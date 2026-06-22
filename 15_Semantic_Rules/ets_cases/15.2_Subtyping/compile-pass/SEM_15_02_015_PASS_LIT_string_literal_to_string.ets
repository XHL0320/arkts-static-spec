/*
 * @id SEM_15_02_015_PASS_LIT_string_literal_to_string
 * @expect compile-pass
 * @section 15.2
 * @design 字符串字面量类型可赋给 `string`。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_02_lit_pass_001_string_literal_to_string(): void {
  let value: int = 1
  value = value + 1
}

