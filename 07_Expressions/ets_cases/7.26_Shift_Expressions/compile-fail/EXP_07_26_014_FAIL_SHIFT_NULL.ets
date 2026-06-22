/**
 * @id EXP_07_26_014_FAIL_SHIFT_NULL
 * @expect compile-fail
 * @section 7.26
 * @design 验证null作为移位操作数时产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testShiftFailNull(): void {
  let a: int | null = 8
  let r: int = a << 2  // compile error: int|null is not directly assignable to numeric shift operand
  console.log(r.toString())
}
