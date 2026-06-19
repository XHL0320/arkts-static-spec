/**
 * @id CLS_09_07_019_FAIL_ABSTRACT_NOT_IMPLEMENTED
 * @expect compile-fail
 * @section 9.7.3
 * @design 抽象方法违规：非抽象子类未提供抽象方法的实现
 * @note 反向用例：非abstract子类必须实现所有继承的abstract方法
 */
abstract class AnimalBase {
  abstract makeSound(): string
  abstract move(): void
}

// Error: non-abstract subclass must implement all inherited abstract methods
class Fish extends AnimalBase {
  makeSound(): string {
    return "Blub"
  }
  // move() is not implemented - compile-time error
}
