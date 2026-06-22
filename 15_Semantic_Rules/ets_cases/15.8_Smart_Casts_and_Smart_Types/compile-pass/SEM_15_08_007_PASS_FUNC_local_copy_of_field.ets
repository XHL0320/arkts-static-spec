/*
 * @id SEM_15_08_007_PASS_FUNC_local_copy_of_field
 * @expect compile-pass
 * @section 15.8
 * @design 字段复制到局部后缩窄使用。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_func_pass_007_local_copy_of_field(): void {
  let value: int = 1
  value = value + 1
}

