/**
 * @id EXP_07_29_003_FAIL_BITWISE_STRING
 * @expect compile-fail
 * @section 7.29
 * @design string 类型位运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBitwiseStringFail(): void {
  let a: string = "abc"; let b: string = "def"
  let bad: int = a & b; console.log(bad.toString())
}
