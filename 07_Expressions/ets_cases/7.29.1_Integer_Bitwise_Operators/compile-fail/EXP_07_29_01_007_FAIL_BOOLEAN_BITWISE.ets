/**
 * @id EXP_07_29_01_007_FAIL_BOOLEAN_BITWISE
 * @expect compile-fail
 * @section 7.29.1
 * @design 整数位运算不允许 boolean 操作数
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBooleanBitwiseFail(): void {
  let a: int = 5; let b: boolean = true
  let bad: int = a & b; console.log(bad.toString())
}
