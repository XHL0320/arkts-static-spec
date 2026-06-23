/*
 * @id SEM_15_08_00_023_PASS_GLOBAL_function_reads_global_then_local_copy
 * @expect compile-pass
 * @section 15.8
 * @design 函数内读取全局变量到局部，再缩窄局部。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_global_pass_001_function_reads_global_then_local_copy(): void {
  let value: int = 1
  value = value + 1
}

