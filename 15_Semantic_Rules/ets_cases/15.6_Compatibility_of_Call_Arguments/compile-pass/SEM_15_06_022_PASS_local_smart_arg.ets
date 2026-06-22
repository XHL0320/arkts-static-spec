/*
 * @id SEM_15_06_022_PASS_local_smart_arg
 * @expect compile-pass
 * @section 15.6
 * @design | 智能实参 | Java pattern variable 只在流作用域内有效。 | Swift 使用显式 narrowed binding。 | `SEM_15_06_022_PASS_local_smart_arg` | `SEM_15_06_026_FAIL_global_smart_arg_assumed` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_06_pass_022_local_smart_arg(): void {
  let value: int = 1
}



