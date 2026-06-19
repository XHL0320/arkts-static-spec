/**
 * @id CLS_09_07_002_FAIL_STATIC_ABSTRACT_THIS
 * @expect compile-fail
 * @section 9.7.1
 * @design 静态方法违规：static与abstract组合导致编译错误；静态方法中使用this导致编译错误
 * @note 反向用例：static方法修饰符约束与this使用约束违规
 */
abstract class Base002 {
  abstract foo(): void
}

class BadStatic002 extends Base002 {
  // Error: static cannot combine with abstract
  static abstract foo(): void

  x: int = 0

  // Error: 'this' cannot be used in static method
  static badGetX(): int {
    return this.x
  }
}
