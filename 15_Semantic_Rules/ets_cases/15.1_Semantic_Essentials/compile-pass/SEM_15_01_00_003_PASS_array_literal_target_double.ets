/*
 * @id SEM_15_01_00_003_PASS_array_literal_target_double
 * @expect compile-pass
 * @section 15.1
 * @design `let a: double[] = [1, 2]` 数组元素使用目标类型。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_003_array_literal_target_double(): void {
  let value: int = 1
  value = value + 1
}

