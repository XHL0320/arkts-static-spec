/*
 * @id SEM_15_04_013_FAIL_global_narrowing_assumed
 * @expect compile-fail
 * @section 15.4
 * @design 假设全局变量缩窄后稳定。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_fail_010_global_narrowing_assumed(): void {
  let value: string = 1
}

