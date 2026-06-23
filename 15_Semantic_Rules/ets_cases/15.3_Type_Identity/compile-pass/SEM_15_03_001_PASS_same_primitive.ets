/*
 * @id SEM_15_03_001_PASS_same_primitive
 * @expect compile-pass
 * @section 15.3
 * @design 相同基础类型，例如 `int` 与 `int`。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_03_pass_001_same_primitive(): void {
  let value: int = 1
  value = value + 1
}

