/**
 * @id CLS_09_07_006_FAIL_ABSTRACT_PRIVATE_NONABSTRACT
 * @expect compile-fail
 * @section 9.7.3
 * @design 抽象方法违规：abstract方法声明为private；非abstract类中包含abstract方法
 * @note 反向用例：abstract方法访问修饰符与所在类约束违规
 */
class NonAbstract006 {
  // Error: non-abstract class cannot have abstract methods
  abstract badMethod(): void
}

abstract class BadAbstract006 {
  // Error: abstract method cannot be declared private
  private abstract secret(): int
}
