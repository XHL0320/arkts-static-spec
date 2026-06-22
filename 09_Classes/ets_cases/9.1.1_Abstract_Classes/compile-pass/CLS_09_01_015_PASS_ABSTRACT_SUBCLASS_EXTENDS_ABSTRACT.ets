/**
 * @id CLS_09_01_015_PASS_ABSTRACT_SUBCLASS_EXTENDS_ABSTRACT
 * @expect compile-pass
 * @section 9.1.1
 * @design 抽象子类继承抽象类编译通过
 * @note 正向用例：spec 规定 abstract 子类可继承 abstract 类
 */
abstract class AbsRoot {
  abstract methodA(): void
}
abstract class AbsMiddle extends AbsRoot {
  abstract methodB(): void
}

