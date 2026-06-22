/*
 * @id SEM_15_04_014_FAIL_reassignment_kills_narrowing
 * @expect compile-fail
 * @section 15.4
 * @design 缩窄后重新赋值，再按缩窄类型赋值。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_fail_011_reassignment_kills_narrowing(): void {
  let value: string = 1
}

