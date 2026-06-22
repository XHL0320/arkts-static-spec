/**
 * @id EXP_07_33_004_FAIL_TERNARY_NON_BOOL_CONDITION
 * @expect compile-fail
 * @section 7.33
 * @design 非 boolean 条件表达式应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTernaryNonBoolConditionFail(): void {
  let condition: int = 1
  let bad: int = condition ? 1 : 0
  console.log(bad.toString())
}
