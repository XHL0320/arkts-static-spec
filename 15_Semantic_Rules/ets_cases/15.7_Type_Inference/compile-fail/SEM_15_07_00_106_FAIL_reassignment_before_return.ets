/*
 * @id SEM_15_07_00_106_FAIL_reassignment_before_return
 * @expect compile-fail
 * @section 15.7
 * @design return 前重新赋值导致智能类型失效。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_07_fail_011_reassignment_before_return(): void {
  let value: string = 1
}

