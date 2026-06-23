/**
 * @id EXP_07_27_004_FAIL_RELATIONAL_OBJECT
 * @expect compile-fail
 * @section 7.27
 * @design Object 类型关系运算应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
function testRelationalObjectFail(): void {
  let a: Object = new Object()
  let b: Object = new Object()
  let bad: boolean = a < b
  console.log(bad.toString())
}
