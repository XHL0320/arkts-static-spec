/**
 * @id STM_08_15_2_026_FAIL_FINALLY_INVALID_SYNTAX
 * @expect compile-fail
 * @section 8.15.2
 * @design finally 语法错误（缺 try）应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testFinallyInvalidSyntaxFail(): void {
  console.log("before")
  finally { console.log("bad") }
}
