/**
 * @id EXP_07_27_03_004_FAIL_STRING_BOOLEAN
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string类型与boolean类型操作数不能用于关系运算符，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testStringBoolean(): void {
  let s: string = "test"
  let b: boolean = false
  let r: boolean = s <= b  // compile-fail: string <= boolean, incompatible
  console.log(r.toString())
}
