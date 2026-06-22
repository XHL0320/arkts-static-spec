/**
 * @id EXP_07_26_011_FAIL_SHIFT_WITH_OBJECT
 * @expect compile-fail
 * @section 7.26
 * @design 验证Object类型作为移位操作数时产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testShiftFailWithObject(): void {
  let obj: Object = new Object()
  let r: int = obj << 2  // compile error: Object is not a numeric type
  console.log(r.toString())
}
