/**
 * @id EXP2_17_11_2_006_FAIL_FINAL_METHOD_OVERRIDE
 * @expect compile-fail
 * @section 17.11.2
 * @design 子类重写父类的 final 方法：验证子类重写 final 方法应产生编译时错误
 * @note 反向用例：验证重写 final 方法产生 ESE1324203 编译错误
 */
class Base {
  final greet(): void {
    console.log("Base greet")
  }
}

class Derived extends Base {
  greet(): void {
    console.log("Derived greet")
  }
}

function testFinalMethodOverride(): void {
  let d: Derived = new Derived()
  d.greet()
}
