/**
 * @id EXP2_NameConflict_NoAmbiguity_pass
 * @expect compile-pass
 * @section 17.9.4
 * @design overload 名不在 overriding 中考虑，不产生歧义
 * @note 正向用例：方法重写时不受 overload 名干扰
 */
class BaseA {
  compute(a: int): string { return "base-int:" + a }
  computeStr(a: string): string { return "base-str:" + a }
  overload compute { compute, computeStr }
}

class DerivedA extends BaseA {
  // 合法重写 compute 方法
  compute(a: int): string { return "derived-int:" + a }
  computeStr(a: string): string { return "derived-str:" + a }
  overload compute { compute, computeStr }
}
