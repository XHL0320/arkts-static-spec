/*
 * @id SEM_15_01_00_009_PASS_explicit_generic_number
 * @expect compile-pass
 * @section 15.1
 * @design `foo<number>(1)` 显式指定泛型实参后通过。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_pass_009_explicit_generic_number(): void {
  let value: int = 1
  value = value + 1
}

