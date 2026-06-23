/**
 * @id STM_08_10_023_FAIL_BREAK_OUTSIDE_LOOP
 * @expect compile-fail
 * @section 8.10
 * @design 在循环外使用 break 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBreakOutsideLoopFail(): void {
  let x: int = 0
  break
  console.log(x.toString())
}
