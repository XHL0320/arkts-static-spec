/**
 * @id CLS_09_09_009_FAIL_SUPER_NAMED_CALL
 * @expect compile-fail
 * @section 9.9.2
 * @design 显式super.name()命名构造器调用 — 调用父类命名构造器
 * @note 反向用例（命名构造器为实验特性，当前es2panda不支持）：通过super.init(args)调用父类命名构造器
 */
class CLS_09_09_009_Base {
  value: int
  constructor init(x: int) {
    this.value = x
  }
  // Default unnamed constructor for implicit super() calls
  constructor() {
    this.value = -1
  }
}
class CLS_09_09_009_Derived extends CLS_09_09_009_Base {
  constructor fromBase(x: int) {
    super.init(x)
  }
}
