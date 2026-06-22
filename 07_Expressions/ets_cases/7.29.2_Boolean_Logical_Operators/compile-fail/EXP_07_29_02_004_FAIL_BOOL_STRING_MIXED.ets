/**
 * @id EXP_07_29_02_004_FAIL_BOOL_STRING_MIXED
 * @expect compile-fail
 * @section 7.29.2
 * @design boolean 与 string 逻辑运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBoolStringMixedFail(): void {
  let a: boolean = false; let b: string = "true"
  let bad: boolean = a & b; console.log(bad.toString())
}
