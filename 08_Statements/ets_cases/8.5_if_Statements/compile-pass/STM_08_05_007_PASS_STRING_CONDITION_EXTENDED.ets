/**
 * @id STM_08_05_007_PASS_STRING_CONDITION_EXTENDED
 * @expect compile-pass
 * @section 8.5
 * @design if 条件表达式为 string 类型时当前版本因 Extended Conditional Expressions 允许编译通过（spec标注未来版本将废弃此特性）
 * @note 正向用例（Extended Conditional Expressions）：string 类型不能用作 condition，必须为 boolean
 */
function testStringConditionFail(): void {
  let s: string = "hello"
  if (s) {
    s = "world"
  }
}
