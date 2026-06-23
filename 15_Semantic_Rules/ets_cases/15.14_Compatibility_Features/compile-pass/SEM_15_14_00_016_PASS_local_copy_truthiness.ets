/*
 * @id SEM_15_14_00_016_PASS_local_copy_truthiness
 * @expect compile-pass
 * @section 15.14
 * @design 全局变量复制到局部后做 truthiness 判断。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_14_pass_021_local_copy_truthiness(): void {
  let value: int = 1
  value = value + 1
}

