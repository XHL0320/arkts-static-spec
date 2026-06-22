/*
 * @id SEM_15_04_019_PASS_local_smart_assign
 * @expect compile-pass
 * @section 15.4
 * @design | 智能赋值 | Java pattern variable 是流作用域局部变量。 | Swift 用 `if let`/`as?` 生成稳定绑定。 | `SEM_15_04_019_PASS_local_smart_assign` | `SEM_15_04_023_FAIL_reassignment_kills_smart_assign` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_04_pass_023_local_smart_assign(): void {
  let value: int = 1
}



