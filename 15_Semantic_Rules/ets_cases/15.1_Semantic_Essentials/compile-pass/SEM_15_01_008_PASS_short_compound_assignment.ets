/*
 * @id SEM_15_01_008_PASS_short_compound_assignment
 * @expect compile-pass
 * @section 15.1
 * @design `short` 复合赋值保持赋值语义。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_008_short_compound_assignment(): void {
  let value: int = 1
  value = value + 1
}

