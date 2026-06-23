/**
 * @id CLS_09_05_1_006_FAIL_PRIVATE_METHOD_IN_SUBCLASS
 * @expect compile-fail
 * @section 9.5.1
 * @design 子类访问基类private方法导致编译错误
 * @note 反向用例：private方法不可在子类中访问
 */
class PrivMethodBase {
  private hello(): void {}
}
class PrivMethodSub extends PrivMethodBase {
  foo(): void { this.hello() }
}
