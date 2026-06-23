/**
 * @id EXP_07_04_02_009_RUNTIME_INSTANCE_BINDING
 * @expect runtime
 * @section 7.4.2
 * @design 实例绑定运行时验证：验证不同实例的方法引用各自绑定到对应实例
 * @note 运行时用例：m1 绑定到 c1，m2 绑定到 c2，修改 c1.field 后 m1() 返回新值，m2() 返回旧值
 */
class C {
  field: int = 123
  method(): int {
    return this.field
  }
}

function main(): void {
  let c1 = new C()
  let c2 = new C()
  let m1 = c1.method  // c1 被绑定
  let m2 = c2.method  // c2 被绑定

  c1.field = 42
  let r1 = m1()
  let r2 = m2()

  if (r1 != 42) {
    throw new Error("assertion failed: m1() = " + r1 + ", expected 42")
  }
  if (r2 != 123) {
    throw new Error("assertion failed: m2() = " + r2 + ", expected 123")
  }
  console.log("verified")
}
