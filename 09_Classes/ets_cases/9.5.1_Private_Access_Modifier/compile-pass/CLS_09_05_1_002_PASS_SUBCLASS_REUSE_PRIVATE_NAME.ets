/**
 * @id CLS_09_05_1_002_PASS_SUBCLASS_REUSE_PRIVATE_NAME
 * @expect compile-pass
 * @section 9.5.1
 * @design 子类可重用基类private成员的名称编译通过
 * @note 正向用例：spec规定基类private不可访问，子类可重用名称
 */
class PrivBase {
  private count: int = 1
  private hello(): void {}
}
class PrivDerived extends PrivBase {
  count: int = 2
  hello(): void {}
}
