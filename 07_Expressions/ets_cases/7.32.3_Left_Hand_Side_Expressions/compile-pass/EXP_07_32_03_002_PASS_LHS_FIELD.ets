/**
 * @id EXP_07_32_03_002_PASS_LHS_FIELD
 * @expect compile-pass
 * @section 7.32.3
 * @design 左值：字段访问
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class A { f: int = 0 }
function testLhsField(): void {
  let a: A = new A(); a.f = 10
  console.log(a.f.toString())
}
