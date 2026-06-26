/**
 * @id EXP2_17_11_013_COMPILE_FAIL_OVERRIDE_FINAL
 * @expect compile-fail
 * @section 17.11
 * @design 验证重写 final 方法——应报编译错误
 * @note 反向用例：spec §17.11 禁止子类重写父类的 final 方法
 */
class Parent {
  final greet(): void { console.log("hi") }
}

class Child extends Parent {
  override greet(): void { console.log("hello") }
}

function main(): void {}
