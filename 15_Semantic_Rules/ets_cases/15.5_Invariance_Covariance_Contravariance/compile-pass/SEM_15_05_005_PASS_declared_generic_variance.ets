/*
 * @id SEM_15_05_005_PASS_declared_generic_variance
 * @expect compile-pass
 * @section 15.5
 * @design 泛型声明处 `in`/`out` 生效。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_05_pass_005_declared_generic_variance(): void {
  let value: int = 1
  value = value + 1
}

