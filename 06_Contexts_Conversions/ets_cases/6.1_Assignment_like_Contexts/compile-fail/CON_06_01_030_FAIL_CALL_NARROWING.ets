/**
 * @id CON_06_01_030_FAIL_CALL_NARROWING
 * @expect compile-fail
 * @section 6.1
 * @design Call context: number 类型不能隐式 narrowing 转换为 int 类型（调用上下文）
 * @note 反向用例：验证 narrowing 转换在调用上下文中应产生编译时错误
 */
function requireInt(val: int): void {
  let x: int = val
}

function testCallNarrowingFail(): void {
  let numVal: number = 7.7
  requireInt(numVal)
}
