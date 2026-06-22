/*
 * @id SEM_15_01_012_FAIL_generic_target_no_extra_inference
 * @expect compile-fail
 * @section 15.1
 * @design `foo<T extends number>(x: T); foo(1)` 推断为 `int`，不是 `number`。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_fail_003_generic_target_no_extra_inference(): void {
  let value: string = 1
}

