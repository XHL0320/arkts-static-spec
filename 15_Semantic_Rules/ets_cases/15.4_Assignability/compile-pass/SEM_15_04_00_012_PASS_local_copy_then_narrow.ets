/*
 * @id SEM_15_04_00_012_PASS_local_copy_then_narrow
 * @expect compile-pass
 * @section 15.4
 * @design 全局或字段复制到局部变量后再缩窄赋值。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_pass_011_local_copy_then_narrow(): void {
  let value: int = 1
  value = value + 1
}

