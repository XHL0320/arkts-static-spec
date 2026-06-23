/*
 * @id SEM_15_08_00_003_PASS_FUNC_instanceof_interface
 * @expect compile-pass
 * @section 15.8
 * @design 局部变量经 `instanceof` 接口缩窄后调用接口方法。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_func_pass_002_instanceof_interface(): void {
  let value: int = 1
  value = value + 1
}

