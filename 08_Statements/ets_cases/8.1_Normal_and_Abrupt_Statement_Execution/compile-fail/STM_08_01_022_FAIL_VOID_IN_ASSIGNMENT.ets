/**
 * @id STM_08_01_022_FAIL_VOID_IN_ASSIGNMENT
 * @expect compile-fail
 * @section 8.1
 * @design void 函数返回值不能用于赋值
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function voidFunc(): void {}
function testVoidInAssignmentFail(): void {
  let x: int = voidFunc()
  console.log(x.toString())
}
