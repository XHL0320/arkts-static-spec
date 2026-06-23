/*
 * @id SEM_15_13_00_006_PASS_ordered_static_fields
 * @expect compile-pass
 * @section 15.13
 * @design | 初始化安全 | Java 循环初始化中可能暴露默认值。 | Swift 通过不同规则防止 use-before-init。 | `SEM_15_13_00_006_PASS_ordered_static_fields` | `SEM_15_13_018_FAIL_static_forward_read` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_13_pass_020_ordered_static_fields(): void {
  let value: int = 1
}



