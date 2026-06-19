/**
 * @id CLS_09_09_012_FAIL_ARG_INSTANCE_METHOD
 * @expect compile-fail
 * @section 9.9.2
 * @design 显式构造器调用参数引用实例方法 — spec: "arguments cannot refer to instance method"
 * @note 反向用例：super(this.getInstanceMethod())应编译失败
 */
class CLS_09_09_012_Base {
  constructor(x: int) {}
}
class CLS_09_09_012_Derived extends CLS_09_09_012_Base {
  getValue(): int {
    return 42
  }
  constructor() {
    super(this.getValue())
  }
}
