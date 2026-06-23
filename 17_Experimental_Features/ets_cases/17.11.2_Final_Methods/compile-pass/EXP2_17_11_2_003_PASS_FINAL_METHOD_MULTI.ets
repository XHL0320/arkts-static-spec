/**
 * @id EXP2_17_11_2_003_PASS_FINAL_METHOD_MULTI
 * @expect compile-pass
 * @section 17.11.2
 * @design 多个 final 方法共存：验证一个类中可以声明多个 final 方法，且可以与普通方法共存
 * @note 正向用例：验证多个 final 方法和普通方法可以在同一类中共存
 */
class MultiMethod {
  final methodA(): void {
    console.log("final A")
  }

  final methodB(): void {
    console.log("final B")
  }

  normalMethod(): void {
    console.log("normal")
  }
}

class Child extends MultiMethod {
  // 可以重写普通方法
  normalMethod(): void {
    console.log("child normal")
  }
}

function testFinalMethodMulti(): void {
  let c: Child = new Child()
  c.methodA()
  c.methodB()
  c.normalMethod()
  console.log("pass")
}
