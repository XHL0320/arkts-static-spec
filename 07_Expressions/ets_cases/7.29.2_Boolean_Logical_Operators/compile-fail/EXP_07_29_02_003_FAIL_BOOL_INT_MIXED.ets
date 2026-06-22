/**
 * @id EXP_07_29_02_003_FAIL_BOOL_INT_MIXED
 * @expect compile-fail
 * @section 7.29.2
 * @design boolean 与 int 逻辑运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testBoolIntMixedFail(): void {
  let a: boolean = true; let b: int = 1
  let bad: boolean = a | b; console.log(bad.toString())
}
