/*
 * @id SEM_15_12_00_009_PASS_nonnullish_effective
 * @expect compile-pass
 * @section 15.12
 * @design `NonNullish<T>` 移除 nullish。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_12_pass_006_nonnullish_effective(): void {
  let value: int = 1
  value = value + 1
}

