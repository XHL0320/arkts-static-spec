/**
 * @id LEX_02_07_018_PASS_HARD_KW_MODIFIERS
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: static, abstract, override (final 待 ArkTS 实现)
 * @note 正向用例：static/abstract/override 修饰符
 */
abstract class Base018 {
  static count: int = 0
  abstract compute(): int
}

class Derived018 extends Base018 {
  override compute(): int {
    return 42
  }
}

function test018(): void {
  let d: Derived018 = new Derived018()
  let v: int = d.compute()
  let c: int = Base018.count
}
