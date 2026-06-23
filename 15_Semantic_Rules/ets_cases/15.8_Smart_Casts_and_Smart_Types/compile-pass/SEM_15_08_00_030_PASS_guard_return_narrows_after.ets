/*
 * @id SEM_15_08_00_030_PASS_guard_return_narrows_after
 * @expect compile-pass
 * @section 15.8
 * @design | 控制流缩窄 | Java pattern variable 是流作用域。 | Swift `if let`/`guard let` 作用域显式。 | `SEM_15_08_024_PASS_guard_return_narrows_after` | `SEM_15_08_026_FAIL_outside_branch_use` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_pass_021_guard_return_narrows_after(): void {
  let value: int = 1
}



