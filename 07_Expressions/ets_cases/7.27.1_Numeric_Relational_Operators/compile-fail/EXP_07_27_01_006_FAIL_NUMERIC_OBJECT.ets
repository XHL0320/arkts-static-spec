/**
 * @id EXP_07_27_01_006_FAIL_NUMERIC_OBJECT
 * @expect compile-fail
 * @section 7.27.1
 * @design 验证数值类型与Object类型操作数不能用于关系运算符，应产生编译时错误
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testNumericObject(): void {
  let n: long = 1000
  let obj: Object = {value: 42}
  let r: boolean = n <= obj  // compile-fail: long <= Object, incompatible
  console.log(r.toString())
}
