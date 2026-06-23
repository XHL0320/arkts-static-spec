/*
 * @id SEM_15_08_00_033_PASS_no_side_effect_between_check_and_use
 * @expect compile-pass
 * @section 15.8
 * @design | 副作用 | Java 也会因赋值影响 flow fact。 | Swift 捕获可变状态规则不同。 | `SEM_15_08_027_PASS_no_side_effect_between_check_and_use` | `SEM_15_08_032_FAIL_closure_or_call_mutates_value` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_pass_024_no_side_effect_between_check_and_use(): void {
  let value: int = 1
}



