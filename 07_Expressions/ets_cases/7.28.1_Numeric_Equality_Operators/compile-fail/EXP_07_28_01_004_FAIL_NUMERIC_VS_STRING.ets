/**
 * @id EXP_07_28_01_004_FAIL_NUMERIC_VS_STRING
 * @expect compile-fail
 * @section 7.28.1
 * @design numeric 与 string 相等比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testNumericVsStringFail(): void {
  let a: int = 5; let b: string = "5"
  let bad: boolean = a == b; console.log(bad.toString())
}
