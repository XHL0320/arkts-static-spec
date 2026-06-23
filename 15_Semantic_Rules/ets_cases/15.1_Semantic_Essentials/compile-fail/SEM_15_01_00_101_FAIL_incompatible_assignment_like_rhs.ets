/*
 * @id SEM_15_01_00_101_FAIL_incompatible_assignment_like_rhs
 * @expect compile-fail
 * @section 15.1
 * @design 右值类型已知但不可赋给目标类型。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_fail_002_incompatible_assignment_like_rhs(): void {
  let value: string = 1
}

