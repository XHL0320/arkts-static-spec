/**
 * @id EXP_07_32_03_004_FAIL_LHS_CHAINING
 * @expect compile-fail
 * @section 7.32.3
 * @design chaining operator ?. 在左值中应产生编译错误
 * @note 反向用例：验证该场景应产生编译时错误。
 */
class A { f: int = 0 }
function testLhsChainingFail(): void {
  let a: A | undefined = new A()
  a?.f = 10
  console.log("bad")
}
