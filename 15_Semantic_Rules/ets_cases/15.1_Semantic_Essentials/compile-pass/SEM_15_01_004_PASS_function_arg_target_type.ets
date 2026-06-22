/*
 * @id SEM_15_01_004_PASS_function_arg_target_type
 * @expect compile-pass
 * @section 15.1
 * @design `foo(x: double); foo(1)` 调用实参使用类赋值上下文。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_004_function_arg_target_type(): void {
  let value: int = 1
  value = value + 1
}

