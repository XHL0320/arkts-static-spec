/**
 * @id CLS_09_07_002_PASS_METHOD_MODIFIER_COMBO
 * @expect compile-pass
 * @section 9.7
 * @design 合法的方法修饰符组合 — override + async
 * @note 正向用例：验证合法修饰符组合编译通过
 */
abstract class Base002 {
  foo(): void {}
}
class Child002 extends Base002 {
  override foo(): void {}
}
