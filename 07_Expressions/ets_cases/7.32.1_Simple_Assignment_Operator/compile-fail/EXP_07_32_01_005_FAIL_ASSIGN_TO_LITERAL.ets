/**
 * @id EXP_07_32_01_005_FAIL_ASSIGN_TO_LITERAL
 * @expect compile-fail
 * @section 7.32.1
 * @design 字面量赋值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testAssignToLiteralFail(): void {
  5 = 10
  console.log("bad")
}
