/**
 * @id STM_08_05_008_FAIL_FLOAT_CONDITION
 * @expect compile-pass
 * @section 8.5
 * @design if 条件表达式为 number（浮点）类型时当前版本因 Extended Conditional Expressions 允许编译通过（spec标注未来版本将废弃此特性）
 * @note 正向用例（Extended Conditional Expressions）：number 类型不能用作 condition，必须为 boolean
 */
function testFloatConditionFail(): void {
  let val: number = 3.14
  if (val) {
    val = 0.0
  }
}
