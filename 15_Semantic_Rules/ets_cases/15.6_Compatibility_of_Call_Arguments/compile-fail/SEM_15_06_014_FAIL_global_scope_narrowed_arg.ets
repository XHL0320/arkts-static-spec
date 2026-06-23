/*
 * @id SEM_15_06_014_FAIL_global_scope_narrowed_arg
 * @expect compile-fail
 * @section 15.6
 * @design 假设全局变量缩窄稳定后传参。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_06_fail_011_global_scope_narrowed_arg(): void {
  let value: string = 1
}

