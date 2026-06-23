/**
 * @id EXP_07_31_004_FAIL_COND_OR_STRING
 * @expect compile-fail
 * @section 7.31
 * @design string 类型 || 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCondOrStringFail(): void {
  let a: string = ""; let b: boolean = true
  let bad: boolean = a || b; console.log(bad.toString())
}
