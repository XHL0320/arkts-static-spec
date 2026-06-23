/*
 * @id SEM_15_06_006_PASS_function_scope_smart_arg
 * @expect compile-pass
 * @section 15.6
 * @design 局部变量经 `instanceof` 缩窄后传给子类型参数。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_06_pass_010_function_scope_smart_arg(): void {
  let value: int = 1
  value = value + 1
}

