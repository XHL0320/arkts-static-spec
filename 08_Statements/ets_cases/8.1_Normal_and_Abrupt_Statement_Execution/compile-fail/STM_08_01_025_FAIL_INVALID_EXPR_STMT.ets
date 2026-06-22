/**
 * @id STM_08_01_025_FAIL_INVALID_EXPR_STMT
 * @expect compile-fail
 * @section 8.1
 * @design 无效表达式语句
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testInvalidExprStmtFail(): void {
  let x: int = 5
  x = "string"
  console.log(x.toString())
}
