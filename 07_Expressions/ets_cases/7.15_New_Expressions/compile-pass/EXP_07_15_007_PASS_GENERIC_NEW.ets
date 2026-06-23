/**
 * @id EXP_07_15_007_PASS_GENERIC_NEW
 * @expect compile-pass
 * @section 7.15
 * @design 验证泛型类带类型参数实例化 new Box<int>(42)
 * @note 正向用例：泛型类实例化显式类型参数
 */
class MyBox<T> {
  val: T
  constructor(v: T) { this.val = v }
}
let b = new MyBox<int>(42)
