/*
 * @id SEM_15_11_019_FAIL_global_not_narrowed_for_overload
 * @expect compile-fail
 * @section 15.11
 * @design 全局变量缩窄不应稳定影响重载选择。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_11_fail_020_global_not_narrowed_for_overload(): void {
  let value: string = 1
}

