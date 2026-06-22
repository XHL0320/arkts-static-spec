/**
 * @id EXP_07_29_01_006_FAIL_FLOAT_BITWISE
 * @expect compile-fail
 * @section 7.29.1
 * @design float 类型位运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testFloatBitwiseFail(): void {
  let a: float = 3.14; let b: float = 2.71
  let bad: float = a & b; console.log(bad.toString())
}
