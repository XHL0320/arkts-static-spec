/**
 * @id CLS_09_10_005_FAIL_NON_ABSTRACT_MISSING_IMPL
 * @expect compile-fail
 * @section 9.10
 * @design 非抽象子类必须实现所有继承的抽象方法，未实现则编译失败
 * @note 反向用例：非抽象类继承抽象类但未实现抽象方法foo()
 */
abstract class BaseAnimal {
  protected name: string = ""

  public abstract makeSound(): string
  public abstract move(): void
}

class Cat extends BaseAnimal {
  // 缺少 makeSound() 实现
  // 缺少 move() 实现
  // 非抽象子类必须实现所有抽象方法
}
