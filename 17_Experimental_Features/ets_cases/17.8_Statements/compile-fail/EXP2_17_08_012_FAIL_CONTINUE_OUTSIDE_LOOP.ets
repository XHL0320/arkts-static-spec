/**
 * @id EXP2_17_08_012_FAIL_CONTINUE_OUTSIDE_LOOP
 * @expect compile-fail
 * @section 17.8
 * @design continue 只能在循环体（while/do-while/for/for-of/for-in）中使用，在循环外使用应产生编译错误
 * @note 反向用例：验证 continue 在循环外使用产生编译时错误
 */
function testContinueOutsideLoop(): void {
  let y: number = 0
  continue
}
