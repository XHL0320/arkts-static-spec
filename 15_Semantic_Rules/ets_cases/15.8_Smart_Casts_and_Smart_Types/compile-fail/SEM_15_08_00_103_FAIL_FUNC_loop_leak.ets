/*
 * @id SEM_15_08_00_103_FAIL_FUNC_loop_leak
 * @expect compile-fail
 * @section 15.8
 * @design 循环内缩窄泄漏到循环外。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_func_fail_004_loop_leak(): void {
  let value: string = 1
}

