/*
 * @id SEM_15_08_018_FAIL_FIELD_this_field_after_method_call
 * @expect compile-fail
 * @section 15.8
 * @design 字段缩窄后方法调用可能修改字段。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_08_field_fail_001_this_field_after_method_call(): void {
  let value: string = 1
}

