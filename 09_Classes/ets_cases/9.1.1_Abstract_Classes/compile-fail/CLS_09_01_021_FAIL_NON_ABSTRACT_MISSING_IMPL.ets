/**
 * @id CLS_09_01_021_FAIL_NON_ABSTRACT_MISSING_IMPL
 * @expect compile-fail
 * @section 9.1.1
 * @design 非抽象子类未实现所有抽象方法导致编译错误
 * @note 反向用例：非抽象子类必须实现所有抽象方法
 */
abstract class AbsBase {
  abstract methodA(): void
  abstract methodB(): string
}
class PartialImpl extends AbsBase {
  methodA(): void {}
  // methodB not implemented
}

