/*
 * @id SEM_15_01_010_FAIL_standalone_object_literal
 * @expect compile-fail
 * @section 15.1
 * @design 对象字面量作为独立表达式，无法推断类型。
 * @note Generated one-to-one from test_design. Replace scaffold body with rule-specific code when promoting to conformance suite.
 */

function sem_15_01_fail_001_standalone_object_literal(): void {
  let value: string = 1
}

