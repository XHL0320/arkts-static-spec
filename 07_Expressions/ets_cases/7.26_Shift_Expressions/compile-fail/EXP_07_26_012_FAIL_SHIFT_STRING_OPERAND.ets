/**
 * @id EXP_07_26_012_FAIL_SHIFT_STRING_OPERAND
 * @expect compile-fail
 * @section 7.26
 * @design 验证string类型作为移位操作数时产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testShiftFailStringOperand(): void {
  let a: int = 10
  let r: int = a >> "3"  // compile error: string literal is not numeric
  console.log(r.toString())
}
