/*
 * @id SEM_15_08_001_PASS_FUNC_instanceof_class
 * @expect compile-pass
 * @section 15.8
 * @design 局部变量经 `instanceof` 类缩窄后调用子类方法。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_func_pass_001_instanceof_class(): void {
  let value: int = 1
  value = value + 1
}

