/**
 * @id EXP2_17_09_2_014_FAIL_METHODOVERLOAD_STATICMISMATCH
 * @expect compile-fail
 * @section 17.9.2
 * @design static overload 不能包含非 static 方法 — 编译错误
 * @note 反向用例：static overload 中包含实例方法
 */
class StaticFail {
  static m1(a: int): int { return a }
  m2(a: string): int { return a.length }  // 实例方法，非 static
  static overload busy { m1, m2 }
}
