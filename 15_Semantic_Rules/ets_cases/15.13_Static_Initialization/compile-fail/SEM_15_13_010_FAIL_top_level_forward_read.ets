/*
 * @id SEM_15_13_010_FAIL_top_level_forward_read
 * @expect compile-fail
 * @section 15.13
 * @design 顶层变量初始化前读取。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_13_fail_002_top_level_forward_read(): void {
  let value: string = 1
}

