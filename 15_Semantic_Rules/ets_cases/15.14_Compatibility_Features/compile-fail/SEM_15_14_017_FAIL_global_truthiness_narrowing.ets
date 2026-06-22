/*
 * @id SEM_15_14_017_FAIL_global_truthiness_narrowing
 * @expect compile-fail
 * @section 15.14
 * @design 假设全局变量 truthiness 缩窄稳定。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_14_fail_020_global_truthiness_narrowing(): void {
  let value: string = 1
}

