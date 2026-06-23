/**
 * @id EXP2_17_08_011_FAIL_BREAK_OUTSIDE_LOOP
 * @expect compile-fail
 * @section 17.8
 * @design break 只能在循环（while/do-while/for/for-of/for-in）或 switch 中使用，在循环和 switch 外使用应产生编译错误
 * @note 反向用例：验证 break 在循环外使用产生编译时错误
 */
function testBreakOutsideLoop(): void {
  let x: number = 10
  if (x > 5) {
    break
  }
}
