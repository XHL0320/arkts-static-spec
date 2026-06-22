/**
 * @id EXP_07_32_03_006_FAIL_LHS_CALL_RESULT
 * @expect compile-fail
 * @section 7.32.3
 * @design 调用结果作为左值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function foo(): int { return 5 }
function testLhsCallResultFail(): void {
  foo() = 10
  console.log("bad")
}
