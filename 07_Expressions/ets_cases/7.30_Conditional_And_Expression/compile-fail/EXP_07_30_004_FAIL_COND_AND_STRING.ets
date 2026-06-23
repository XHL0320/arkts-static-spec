/**
 * @id EXP_07_30_004_FAIL_COND_AND_STRING
 * @expect compile-fail
 * @section 7.30
 * @design string 类型 && 应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testCondAndStringFail(): void {
  let a: string = "true"; let b: boolean = true
  let bad: boolean = a && b; console.log(bad.toString())
}
