/*
 * @id SEM_15_02_012_FAIL_GEN_invariant_mismatch
 * @expect compile-fail
 * @section 15.2
 * @design 默认不变泛型中 `Box<Derived>` 赋给 `Box<Base>`。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_02_gen_fail_001_invariant_mismatch(): void {
  let value: string = 1
}

