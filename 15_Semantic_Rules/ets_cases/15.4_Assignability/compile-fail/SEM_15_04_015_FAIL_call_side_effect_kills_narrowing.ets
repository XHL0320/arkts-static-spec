/*
 * @id SEM_15_04_015_FAIL_call_side_effect_kills_narrowing
 * @expect compile-fail
 * @section 15.4
 * @design 函数调用可能修改被缩窄变量。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_fail_012_call_side_effect_kills_narrowing(): void {
  let value: string = 1
}

