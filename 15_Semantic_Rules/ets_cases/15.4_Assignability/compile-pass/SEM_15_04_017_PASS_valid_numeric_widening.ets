/*
 * @id SEM_15_04_017_PASS_valid_numeric_widening
 * @expect compile-pass
 * @section 15.4
 * @design | 数值转换 | Java 有 primitive widening，但数值体系不同。 | Swift 通常要求显式数值转换。 | `SEM_15_04_017_PASS_valid_numeric_widening` | `SEM_15_04_019_FAIL_double_to_int` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_pass_021_valid_numeric_widening(): void {
  let value: int = 1
}



