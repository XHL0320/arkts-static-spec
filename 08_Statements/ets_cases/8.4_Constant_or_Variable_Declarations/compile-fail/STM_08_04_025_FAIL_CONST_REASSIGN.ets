/**
 * @id STM_08_04_025_FAIL_CONST_REASSIGN
 * @expect compile-fail
 * @section 8.4
 * @design const 变量重新赋值应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testConstReassignFail(): void {
  const x: int = 42
  x = 99
  console.log(x.toString())
}
