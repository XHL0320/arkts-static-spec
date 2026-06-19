/**
 * @id CLS_09_07_009_FAIL_STATIC_METHOD_OVERRIDE_MODIFIER
 * @expect compile-fail
 * @section 9.7.1
 * @design 静态方法不能与override修饰符组合：静态方法不参与重写机制
 * @note 反向用例：static与override同时使用导致编译错误
 */
class Base009 {
  static greet(): string {
    return "hello from base"
  }

  static calculate(x: int): int {
    return x + 1
  }
}

class BadOverride009 extends Base009 {
  static override greet(): string {
    return "hello from derived"
  }

  static override calculate(x: int): int {
    return x * 2
  }
}
