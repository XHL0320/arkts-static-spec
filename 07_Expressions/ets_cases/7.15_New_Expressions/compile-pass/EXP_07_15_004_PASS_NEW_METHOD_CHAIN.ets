/**
 * @id EXP_07_15_004_PASS_NEW_METHOD_CHAIN
 * @expect compile-pass
 * @section 7.15
 * @design 验证 new 后直接调用方法 new A().method()
 * @note 正向用例：new 表达式结果作为对象引用调用方法
 */
class A {
  getVal(): int { return 42 }
}
let v: int = new A().getVal()
