/**
 * @id CLS_09_07_008_FAIL_OVERRIDE_NOTHING_STATIC
 * @expect compile-fail
 * @section 9.7.5
 * @design 重写违规：override未重写任何超类方法；override与static组合
 * @note 反向用例：override修饰符约束违规
 */
class Base008 {
  foo(): void {}
}

class BadOverride008 extends Base008 {
  // Error: override overrides no method from superclass
  override bar(): void {}

  // Error: override cannot combine with static
  static override foo(): void {}
}
