/*
 * @id SEM_15_08_006_PASS_FUNC_return_guard_narrowing
 * @expect compile-pass
 * @section 15.8
 * @design 提前 return 后缩窄后续代码。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_func_pass_006_return_guard_narrowing(): void {
  let value: int = 1
  value = value + 1
}

