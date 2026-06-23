/**
 * @id EXP_07_27_01_005_FAIL_NUMERIC_BOOLEAN
 * @expect compile-fail
 * @section 7.27.1
 * @design 验证数值类型与boolean类型操作数不能用于关系运算符，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testNumericBoolean(): void {
  let n: double = 3.14
  let b: boolean = true
  let r: boolean = n > b  // compile-fail: double > boolean, incompatible
  console.log(r.toString())
}
