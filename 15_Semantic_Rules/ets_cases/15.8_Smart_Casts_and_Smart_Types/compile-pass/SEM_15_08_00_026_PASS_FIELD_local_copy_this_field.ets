/*
 * @id SEM_15_08_00_026_PASS_FIELD_local_copy_this_field
 * @expect compile-pass
 * @section 15.8
 * @design `this.f` 复制到局部后缩窄。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_field_pass_001_local_copy_this_field(): void {
  let value: int = 1
  value = value + 1
}

