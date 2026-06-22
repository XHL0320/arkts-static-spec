/**
 * @id CLS_09_01_016_PASS_NON_ABSTRACT_SUBCLASS
 * @expect compile-pass
 * @section 9.1.1
 * @design 非抽象子类继承并实现抽象类编译通过
 * @note 正向用例：非抽象子类实现所有抽象方法
 */
abstract class AbsParent {
  abstract greet(): string
}
class ConcreteChild extends AbsParent {
  greet(): string {
    return "hello"
  }
}

