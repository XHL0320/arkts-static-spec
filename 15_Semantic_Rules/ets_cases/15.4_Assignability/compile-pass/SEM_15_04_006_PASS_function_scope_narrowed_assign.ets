/*
 * @id SEM_15_04_006_PASS_function_scope_narrowed_assign
 * @expect compile-pass
 * @section 15.4
 * @design 函数局部变量缩窄后赋给缩窄目标。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_pass_010_function_scope_narrowed_assign(): void {
  let value: int = 1
  value = value + 1
}

