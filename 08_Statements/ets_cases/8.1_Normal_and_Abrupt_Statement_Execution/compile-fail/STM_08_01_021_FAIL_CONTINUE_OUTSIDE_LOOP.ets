/**
 * @id STM_08_01_021_FAIL_CONTINUE_OUTSIDE_LOOP
 * @expect compile-fail
 * @section 8.1
 * @design 在循环外部使用 continue 语句应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testContinueOutsideLoopFail(): void {
  let x: int = 0
  continue
  console.log(x.toString())
}
