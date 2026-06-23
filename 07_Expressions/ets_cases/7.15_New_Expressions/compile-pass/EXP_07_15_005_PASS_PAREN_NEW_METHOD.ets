/**
 * @id EXP_07_15_005_PASS_PAREN_NEW_METHOD
 * @expect compile-pass
 * @section 7.15
 * @design 验证带括号的 new 后调用方法 (new A).method()
 * @note 正向用例：括号包裹 new 表达式再调用方法
 */
class A {
  getVal(): int { return 42 }
}
let v: int = (new A).getVal()
