/**
 * @id STM_08_02_021_FAIL_TYPE_MISMATCH_STMT
 * @expect compile-fail
 * @section 8.2
 * @design 类型不匹配的赋值表达式语句应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testTypeMismatchStmtFail(): void {
  let x: int = 5
  x = "hello"
  console.log(x.toString())
}
