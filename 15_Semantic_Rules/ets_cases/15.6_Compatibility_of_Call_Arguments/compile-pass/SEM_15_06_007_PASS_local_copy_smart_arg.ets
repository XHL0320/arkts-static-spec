/*
 * @id SEM_15_06_007_PASS_local_copy_smart_arg
 * @expect compile-pass
 * @section 15.6
 * @design 全局变量复制到局部后缩窄再传参。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_06_pass_011_local_copy_smart_arg(): void {
  let value: int = 1
  value = value + 1
}

