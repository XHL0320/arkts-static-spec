/**
 * @id EXP_07_32_03_005_FAIL_LHS_LITERAL
 * @expect compile-fail
 * @section 7.32.3
 * @design 字面量作为左值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testLhsLiteralFail(): void {
  "hello" = 10
  console.log("bad")
}
