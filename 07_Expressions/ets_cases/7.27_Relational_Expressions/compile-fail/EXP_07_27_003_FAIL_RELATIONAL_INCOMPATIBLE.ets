/**
 * @id EXP_07_27_003_FAIL_RELATIONAL_INCOMPATIBLE
 * @expect compile-fail
 * @section 7.27
 * @design 不兼容类型关系运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testRelationalIncompatibleFail(): void {
  let a: string = "hello"
  let b: int = 5
  let bad: boolean = a < b
  console.log(bad.toString())
}
