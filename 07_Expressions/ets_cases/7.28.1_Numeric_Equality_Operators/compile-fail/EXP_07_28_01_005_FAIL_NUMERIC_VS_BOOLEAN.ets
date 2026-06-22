/**
 * @id EXP_07_28_01_005_FAIL_NUMERIC_VS_BOOLEAN
 * @expect compile-fail
 * @section 7.28.1
 * @design numeric 与 boolean 相等比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testNumericVsBooleanFail(): void {
  let a: int = 1; let b: boolean = true
  let bad: boolean = a === b; console.log(bad.toString())
}
