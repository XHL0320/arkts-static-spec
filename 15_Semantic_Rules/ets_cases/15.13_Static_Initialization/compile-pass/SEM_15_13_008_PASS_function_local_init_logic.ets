/*
 * @id SEM_15_13_008_PASS_function_local_init_logic
 * @expect compile-pass
 * @section 15.13
 * @design 初始化器委托给局部智能类型安全的函数。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_13_pass_002_function_local_init_logic(): void {
  let value: int = 1
  value = value + 1
}

