/**
 * @id CON_06_01_021_FAIL_CALL_ARGUMENT_MISMATCH
 * @expect compile-fail
 * @section 6.1
 * @design Call context: 函数调用实参类型(boolean)与形参类型(string)不匹配且无隐式转换
 * @note 反向用例：验证该场景应产生编译时错误
 */
function expectString(s: string): void {
  let x: string = s
}

function testCallArgumentMismatchFail(): void {
  expectString(false)
}
