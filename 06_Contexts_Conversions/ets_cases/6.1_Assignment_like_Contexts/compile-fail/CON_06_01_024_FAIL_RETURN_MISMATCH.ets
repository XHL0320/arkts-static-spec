/**
 * @id CON_06_01_024_FAIL_RETURN_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Return context: return 表达式类型(string)与函数返回类型(boolean)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function returnBoolMismatch(): boolean {
  return "not a boolean"
}

function testReturnMismatchFail(): void {
  let b: boolean = returnBoolMismatch()
}
