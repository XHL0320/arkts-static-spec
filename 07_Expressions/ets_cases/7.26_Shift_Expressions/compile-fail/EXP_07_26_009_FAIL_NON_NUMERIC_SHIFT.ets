/**
 * @id EXP_07_26_009_FAIL_NON_NUMERIC_SHIFT
 * @expect compile-fail
 * @section 7.26
 * @design 验证非数值类型（string）作为移位操作数时产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testShiftFailNonNumeric(): void {
  let a: int = 8
  let s: string = "hello"
  let r: int = a << s  // compile error: string is not a numeric type for shift
  console.log(r.toString())
}
