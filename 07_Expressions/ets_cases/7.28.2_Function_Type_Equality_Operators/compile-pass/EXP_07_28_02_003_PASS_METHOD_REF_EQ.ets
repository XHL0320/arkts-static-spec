/**
 * @id EXP_07_28_02_003_PASS_METHOD_REF_EQ
 * @expect compile-pass
 * @section 7.28.2
 * @design 方法引用相等（含绑定实例）
 * @note 正向用例：验证该特性编译通过的正确用法。
 */
class A { method(): void {} }
function testMethodRefEq(): void {
  let a1: A = new A(); let a2: A = new A()
  let e1: boolean = a1.method == a1.method
  let e2: boolean = a1.method == a2.method
  console.log(e1.toString(), e2.toString())
}
