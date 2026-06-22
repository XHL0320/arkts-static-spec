/**
 * @id EXP_07_26_013_FAIL_SHIFT_BOOLEAN
 * @expect compile-fail
 * @section 7.26
 * @design 验证boolean类型作为移位操作数时产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testShiftFailBoolean(): void {
  let a: int = 8
  let b: boolean = true
  let r: int = a << b  // compile error: boolean is not a numeric type
  console.log(r.toString())
}
