/*
 * @id SEM_15_01_007_PASS_byte_increment
 * @expect compile-pass
 * @section 15.1
 * @design `byte` 前置/后置自增不把变量拓宽成 `int`。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_007_byte_increment(): void {
  let value: int = 1
  value = value + 1
}

