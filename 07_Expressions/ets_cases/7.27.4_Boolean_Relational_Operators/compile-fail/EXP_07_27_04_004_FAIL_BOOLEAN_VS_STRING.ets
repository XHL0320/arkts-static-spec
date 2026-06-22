/**
 * @id EXP_07_27_04_004_FAIL_BOOLEAN_VS_STRING
 * @expect compile-fail
 * @section 7.27.4
 * @design boolean 与 string 关系比较应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBooleanVsStringFail(): void {
  let a: boolean = false; let b: string = "true"
  let bad: boolean = a <= b; console.log(bad.toString())
}
