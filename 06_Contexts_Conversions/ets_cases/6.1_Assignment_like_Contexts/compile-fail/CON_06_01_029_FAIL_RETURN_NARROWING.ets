/**
 * @id CON_06_01_029_FAIL_RETURN_NARROWING
 * @expect compile-fail
 * @section 6.1
 * @design Return context: double 类型不能隐式 narrowing 转换为 int 类型（返回上下文）
 * @note 反向用例：验证 narrowing 转换在返回上下文中应产生编译时错误
 */
function returnIntNarrowing(): int {
  let d: double = 3.14
  return d
}

function testReturnNarrowingFail(): void {
  let i: int = returnIntNarrowing()
}
