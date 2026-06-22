/**
 * @id CLS_09_05_1_007_FAIL_PRIVATE_FIELD_IN_SUBCLASS
 * @expect compile-fail
 * @section 9.5.1
 * @design 子类访问基类private字段导致编译错误
 * @note 反向用例：private字段不可在子类中访问
 */
class PrivFieldBase {
  private count: int = 1
}
class PrivFieldSub extends PrivFieldBase {
  foo(): void { this.count++ }
}
