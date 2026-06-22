/*
 * @id SEM_15_07_008_PASS_explicit_return_avoids_smart_issue
 * @expect compile-pass
 * @section 15.7
 * @design 显式返回类型避免不可表达智能类型问题。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_07_pass_011_explicit_return_avoids_smart_issue(): void {
  let value: int = 1
  value = value + 1
}

