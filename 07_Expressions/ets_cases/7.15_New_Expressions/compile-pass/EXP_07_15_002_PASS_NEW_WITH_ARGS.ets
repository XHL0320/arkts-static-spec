/**
 * @id EXP_07_15_002_PASS_NEW_WITH_ARGS
 * @expect compile-pass
 * @section 7.15
 * @design 验证带参数构造器 new A(42)
 * @note 正向用例：带参数类实例创建，验证参数传递
 */
class A {
  x: int
  constructor(x: int) {
    this.x = x
  }
}
let a = new A(42)
