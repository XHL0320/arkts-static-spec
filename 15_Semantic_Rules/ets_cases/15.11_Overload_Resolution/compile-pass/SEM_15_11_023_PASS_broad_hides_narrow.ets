/*
 * @id SEM_15_11_023_PASS_broad_hides_narrow
 * @expect compile-warn
 * @section 15.11
 * @design | 不可达告警 | Java 没有同类“顺序导致不可达”告警。 | Swift 诊断规则不同。 | `SEM_15_11_023_WARN_broad_hides_narrow` | `SEM_15_11_026_FAIL_invalid_signature_not_warning` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_11_warn_030_broad_hides_narrow(): void {
  let value: int = 1
}



