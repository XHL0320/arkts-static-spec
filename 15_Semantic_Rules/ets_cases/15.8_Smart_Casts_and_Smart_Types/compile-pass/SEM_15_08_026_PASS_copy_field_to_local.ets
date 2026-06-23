/*
 * @id SEM_15_08_026_PASS_copy_field_to_local
 * @expect compile-pass
 * @section 15.8
 * @design | 存储稳定性 | Java pattern variable 是局部变量，不是字段。 | Swift 常用局部绑定避免字段不稳定。 | `SEM_15_08_026_PASS_copy_field_to_local` | `SEM_15_08_030_FAIL_getter_assumed_stable` |
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_pass_023_copy_field_to_local(): void {
  let value: int = 1
}



