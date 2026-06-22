/**
 * @id EXP_07_29_004_FAIL_BITWISE_OBJECT
 * @expect compile-fail
 * @section 7.29
 * @design Object 类型位运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBitwiseObjectFail(): void {
  let a: Object = new Object(); let b: Object = new Object()
  let bad: int = a | b; console.log(bad.toString())
}
