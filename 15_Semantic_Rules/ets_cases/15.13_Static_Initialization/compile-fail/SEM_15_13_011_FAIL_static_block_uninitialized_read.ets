/*
 * @id SEM_15_13_011_FAIL_static_block_uninitialized_read
 * @expect compile-fail
 * @section 15.13
 * @design 静态块读取尚未初始化字段。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_13_fail_003_static_block_uninitialized_read(): void {
  let value: string = 1
}

