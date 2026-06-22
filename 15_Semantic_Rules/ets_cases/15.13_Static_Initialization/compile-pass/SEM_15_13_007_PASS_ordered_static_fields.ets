/*
 * @id SEM_15_13_007_PASS_ordered_static_fields
 * @expect compile-pass
 * @section 15.13
 * @design 静态字段按顺序初始化。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_13_pass_001_ordered_static_fields(): void {
  let value: int = 1
  value = value + 1
}

